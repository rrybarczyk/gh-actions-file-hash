#!/bin/bash
SHA1_1=$(sha1sum file.h)
echo "$SHA1_1"

BUILD_SCRIPT="./build-header.sh"
source "$BUILD_SCRIPT"

SHA1_2=$(sha1sum file.h)
echo "$SHA1_2"

[[ $SHA1_1 == $SHA1_2 ]]; EQUALITY="$?"
echo "$EQUALITY"

