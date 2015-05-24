#!/usr/bin/env bash

targetDir="$1"
dllFullPath="$2"
dllFileName="$(basename $dll)"
dllRootName="$(basename -s .dll $file)"

mkdir -p "$targetDir"

cat > "$targetDir"/"$dllRootName".pc << EOF
Libraries=$dllFullPath

Name: $dllRootName
Libs: -r:$dllFileName
EOF
