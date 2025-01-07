#!/bin/sh

# This script downloads Zig (master branch).

# After running this you put the zig-linux-x86_64 directory created by this script in $PATH,
# using something like `export PATH=$PATH:~/zig-linux-x86_64` in your ~/.bashrc or whatever.

echo "Before: $(zig version)"

original_pwd=$(pwd)

# Go into /tmp in case index.json already exists in our current directory.
cd /tmp
rm -f index.json # Avoid file being renamed due to clobbering.
wget -q https://ziglang.org/download/index.json

tarball_url=$(jq -r '.master."x86_64-linux".tarball' index.json)
tarball_file_name=$(echo $tarball_url | tr '/' '\n' | tail -n1)

cd $original_pwd

rm -f $tarball_file_name # Avoid file being renamed due to clobbering.
wget --show-progress -q $tarball_url

unpacked_tarball_file_name=$(echo $tarball_file_name | sed "s/\.tar\.xz//")

tar xf $tarball_file_name

rm -rf zig-linux-x86_64
mv $unpacked_tarball_file_name zig-linux-x86_64

rm -rf $tarball_file_name

echo "After:  $(zig version)"
