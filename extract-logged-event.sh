#!/bin/sh

#
# Retrieves a logged event from any of the possibly many lines contained in the log entry.
# Takes its pattern to match from STDIN. The log files to look into are passed as arguments.
#

LOG_ENTRY_START="2020-"

head -1 | \
	tr '[]' '.' | \
	xargs -I % sh -c "cat $* | sed -n '1h;1! { /^$LOG_ENTRY_START/{x;/%/p;d}; /^$LOG_ENTRY_START/! H };\${x;/%/p}'" # | fzf --no-sort --reverse" # less -R"
	# xargs -I % sh -c $'cat $* | sed -n \'1h;1! { /^2020/{x;/%/p;d}; /^2020/! H };\${x;/%/p}\' | less -R'
