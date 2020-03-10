#!/bin/sh
SPID="${1:-[0-9]\+}"
LOG_LINE_START='2020-'
sed -n "/ \[$SPID:[0-9]\+\]/ { /Hangfire/! { s/^.* \[$SPID:\([0-9]\+\)\] .*$/\1/;p } }" | sort -n | uniq 
