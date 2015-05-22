#!/bin/bash

fsharpTargetPath="$1/lib/mono/xbuild"
sed --in-place=.bak "s,\$(MSBuildExtensionsPath32)\(.*Microsoft.FSharp.Targets\),$fsharpTargetPath\1,g"
