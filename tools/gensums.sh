#!/bin/bash -e

# Generate checksums for datasets

pushd dataset > /dev/null

find * -name '*.mat' -type f | xargs -n 1 -P $(nproc) sha256sum > sha256sums.txt
echo
cat sha256sums.txt

popd > /dev/null