#!/bin/sh

# takes a list of log files as ARGS
cat "$@" | \
	fzf --ansi \
	    --no-sort \
	    --reverse \
	    --tiebreak=index \
	    --bind=ctrl-r:toggle-sort \
	    --bind "ctrl-m:execute:
                (./extract-logged-event.sh $* | ./browse-logged-event.sh) << 'FZF-EOF'
                {}
FZF-EOF"; # \
#	    --bind "ctrl-d:execute:
#(./a-fif.sh) << 'FZF-EOF'
#{}
#FZF-EOF";
