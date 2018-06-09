#!/bin/sh
set -o errexit
TARGET_DIRECTORY="$1"
shift

function removeLeadingDot()
{
  while read line
  do
    echo "${line#./}"
  done
}

function removeTrailingSlash()
{
  while read line
  do
    echo "${line%/}"
  done
}

mkdir -p "$TARGET_DIRECTORY"
TARGET_DIRECTORY="$(cd "$TARGET_DIRECTORY" && pwd)"

# Copy all artifacts from the source directories.
for source in "$@"
do
  source="$(cd "$source" && pwd)"
  echo "Copying artifacts from $source..."
  (cd $source && find -L . -type f) | while read file
  do
    file="${file#./}"
    mkdir -p "$TARGET_DIRECTORY/$(dirname $file)"
    ln -sf "$source/$file" "$TARGET_DIRECTORY/$file"
  done
done

# Generating maven-metadata files
echo "Generating maven-metadata files..."
FIND_OUTPUT="$(mktemp)"
(cd "$TARGET_DIRECTORY" && find -L . -type f -printf '%h\n' | removeLeadingDot) | xargs dirname | sort | uniq > $FIND_OUTPUT
cat "$FIND_OUTPUT" | while read directory
do (
  cd "$TARGET_DIRECTORY/$directory"
  versions=($(ls -1d */ | removeTrailingSlash | sort --version-sort --reverse))
  if [ ${#versions[@]} -eq 0 ]
  then
    echo "No versions in $(pwd). Skipping..."
    continue
  fi
  latest="${versions[0]}"
  release="${versions[0]}"
  artifactId="$(basename "$directory")"
  groupId="$(dirname "$directory")"
  groupId="${groupId//\//.}"
  cat > maven-metadata-local-repository.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<metadata>
  <groupId>${groupId}</groupId>
  <artifactId>${artifactId}</artifactId>
  <versioning>
    <latest>${latest}</latest>
    <release>${release}</release>
    <versions>
      $(for version in "${versions[@]}"
        do
          echo "<version>${version}</version>"
        done)
    </versions>
  </versioning>
</metadata>
EOF
)
done