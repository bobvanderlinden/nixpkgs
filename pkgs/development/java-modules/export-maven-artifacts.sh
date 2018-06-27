#!/usr/bin/env bash

# This script will run `mvn install` in the current directory with a temporary empty
# local Maven repository. Maven will download all needed files and this script will
# pick these files up and export them to a artifacts.json file inside the current
# directory.

# # Usage:
# Run export-maven-artifacts.sh from your project directory, like so:
# 
#   ./export-maven-artifacts.sh install -Dmaven.tests.skip=true
# 
# The resulting artifacts.json can be used with buildMavenRepository as follows:
# 
#   buildMavenPackage {
#     ...
#     mavenPackages = [
#       buildMavenRepository {
#         artifactsFile = ./artifacts.json;
#       }
#     ];
#     ...
#   }

set -o errexit
set -o pipefail

function find_file()
{
  base_path="$1"
  url="$2"

  path="$url"
  while [[ "$path" != "${path#*/}" ]]
  do
    path="${path#*/}"
    if  [[ "$path" != /* ]] && [[ -e "$base_path/$path" ]]
    then
      echo "$path"
      break
    fi
  done
}

cleanup_commands=()
function cleanup()
{
  for cleanup_command in "${cleanup_commands[@]}"
  do
    $cleanup_command
  done
}

trap cleanup EXIT

MVN_LIFECYCLE_PHASE="${MVN_LIFECYCLE_PHASE:-install}"

if [ -z "$MVN_REPO" ]
then
  MVN_REPO=$(mktemp -d -t maven)/share/maven-repo
  mkdir -p "$MVN_REPO"
  cleanup_commands+=("rm -rf $MVN_REPO")
fi

if [ -z "$MVN_OUTPUT" ]
then
  MVN_OUTPUT="$(mktemp -t maven-output)"
  cleanup_commands+=("rm $MVN_OUTPUT")
  mvn --batch-mode -Dmaven.repo.local=$MVN_REPO "$@" 2>&1 | tee -a "$MVN_OUTPUT"
fi

echo "Generating artifacts.json from Maven output..."
(
  echo -n "["
  cat $MVN_OUTPUT | grep --fixed-string "Downloading from " | egrep --only-matching --extended-regexp "https?:[^ ]*" | sort | uniq | while read url
  do
    filename="${url##*/}"
    if [ "$filename" == "maven-metadata.xml" ]
    then
      continue
    fi

    relativefile="$(find_file "$MVN_REPO" "$url")"
    absolutefile="$MVN_REPO/$relativefile"

    if [ ! -f "$absolutefile" ]
    then
      echo "Could not find file '$absolutefile', which was fetched using '$url'." >&2
      continue
    fi

    local_hash="$(nix-hash --flat --base32 --type sha256 "$absolutefile")"
    remote_hash="$(nix-prefetch-url --type sha256 "$url")"
    if [ "$local_hash" != "$remote_hash" ]
    then
      echo "Hashes differ! $absolutefile has $local_hash, while $url has $remote_hash." >&2
    fi
    echo "{\"file\":\"$relativefile\",\"url\":\"$url\",\"sha256\":\"$remote_hash\"}"
  done | sort | paste -s -d, -
  echo "]"
) | sed -e $'s/},{/}\\\n,{/g' > artifacts.json
