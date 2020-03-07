#!/bin/sh

# Unicode Character 'INHIBIT ARABIC FORM SHAPING' (U+206C) and various other are present in these log files.
# This script will clean them up!
sed -e 's/\xe2\x80\x8b/X/g' \
    -e 's/\xe2\x80\x8c/X/g' \
    -e 's/\xe2\x80\x8d/X/g' \
    -e 's/\xe2\x80\x8e/X/g' \
    -e 's/\xe2\x80\x8f/X/g' \
    -e 's/\xe2\x80\xaa/X/g' \
    -e 's/\xe2\x80\xab/X/g' \
    -e 's/\xe2\x80\xac/X/g' \
    -e 's/\xe2\x80\xad/X/g' \
    -e 's/\xe2\x80\xae/X/g' \
    -e 's/\xe2\x81\xaa/X/g' \
    -e 's/\xe2\x81\xab/X/g' \
    -e 's/\xe2\x81\xac/X/g' \
    -e 's/\xe2\x81\xad/X/g' \
    -e 's/\xe2\x81\xae/X/g' \
    -e 's/\xe2\x81\xaf/X/g'
