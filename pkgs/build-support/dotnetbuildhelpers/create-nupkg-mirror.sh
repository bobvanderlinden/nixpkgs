#!/usr/bin/env bash

dir="$NUPKG_LOCAL_MIRROR_DIR"
[ -z "$dir" ] && dir="nupkg-local-mirror"

mkdir -p "$dir"

for sourceName in $@
do
    targetName="$(basename $sourceName | sed s/^[^-]*-//)"

    # Paket attempts to open in write mode so cannot use symlinks
    # @forki tells me this is to fix some timestamps internal to the zip file?
    # so we copy the nupkgs files and make them writeable
    cp -v "$sourceName" "$dir"/"$targetName"
    chmod 644 "$dir"/"$targetName"

    # ln -svf "$sourceName" "$dir"/"$targetName"
done
