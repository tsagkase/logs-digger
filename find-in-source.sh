#!/bin/sh

# 
# Inspired/copied from `fif` function of `fzf` examples.
#

TEXT=$1
SOURCE_PATH=${2:-.}
# echo "TEXT: $TEXT"
# echo "SOURCE_PATH: $SOURCE_PATH"

if [ ! "$#" -gt 0 ]; then
    echo "Need a string to search for!";
    return 1;
fi;
TARGET=`rg --files-with-matches --no-messages "$TEXT" $SOURCE_PATH | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$TEXT' || rg --ignore-case --pretty --context 10 '$TEXT' {}"`
if [ ! -z ${TARGET} ]
then
    echo "var is set to '$TARGET'"
    sh -c "</dev/tty vim '$TARGET' dummy" # stop vim from complaining about STDIN
fi
#    --bind "ctrl-m:execute:
#    (sed 's/^.*\.\([^\.]*\)(.*$/\1/' | xargs -I % ./find-in-source.sh % .) << 'FZF-EOF'
#                {}
#FZF-EOF"; # \

