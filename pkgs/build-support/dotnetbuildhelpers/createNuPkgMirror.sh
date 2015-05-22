#!/usr/bin/env bash

dir="$NUPKG_LOCAL_MIRROR_DIR"
[ -z "$dir" ] && dir="nupkg-local-mirror"

mkdir -p "$dir"

for sourceName in $@
do
    targetName="$(basename $sourceName | sed s/^[^-]*-//)"
    ln -svf "$sourceName" "$dir"/"$targetName"
done
