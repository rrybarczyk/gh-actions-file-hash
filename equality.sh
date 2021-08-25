set -e
cargo install cbindgen --force bts
cbindgen -V
SHA1_1=$(sha1sum ./src/file.h)

BUILD_SCRIPT="./build-header.sh"
sh ./"$BUILD_SCRIPT"

SHA1_2=$(sha1sum file.h)

[ "$SHA1_1" = "$SHA1_2" ]; echo "$?"
