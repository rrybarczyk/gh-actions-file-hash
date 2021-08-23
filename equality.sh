set -e
SHA1_1=$(sha1sum file.h)

BUILD_SCRIPT="./build-header.sh"
sh ./"$BUILD_SCRIPT"

SHA1_2=$(sha1sum file.h)

[ "$SHA1_1" = "$SHA1_2" ]; echo "$?"
