#!/bin/sh

#
# Allows the selection of a log entry's line to find references in source code.
#

fzf --ansi \
    --no-sort \
    --reverse \
    --tiebreak=index \
    --bind=ctrl-r:toggle-sort \
    --bind "ctrl-m:execute:
    (sed 's/^.*\.\([^\.]*\)(.*$/\1/' | xargs -I % ./find-in-source.sh % .) << 'FZF-EOF'
                {}
FZF-EOF"; # \
#	    --bind "ctrl-d:execute:
#(./a-fif.sh) << 'FZF-EOF'
#{}
#FZF-EOF";
