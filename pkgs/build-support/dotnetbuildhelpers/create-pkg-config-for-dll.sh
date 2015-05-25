#!/usr/bin/env bash

targetDir="$1"
dllFullPath="$2"
dllVersion="$3"
dllFileName="$(basename $dllFullPath)"
dllRootName="$(basename -s .dll $dllFileName)"
targetPcFile="$targetDir"/"$dllRootName".pc 

mkdir -p "$targetDir"

cat > $targetPcFile << EOF
Libraries=$dllFullPath

Name: $dllRootName
Description: $dllRootName
Version: $dllVersion
Libs: -r:$dllFileName
EOF

echo "Created $targetPcFile."
