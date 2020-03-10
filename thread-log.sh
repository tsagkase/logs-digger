#!/bin/sh
THREAD_ID=$1
SPID="${2:-[0-9]\+}"
# echo "SPID: x${SPID}x"
LOG_LINE_START='2020-'
sed -n "/\[$SPID:$THREAD_ID]/,/^$LOG_LINE_START/ { /:$THREAD_ID]/! { /^$LOG_LINE_START/!H; /^$LOG_LINE_START/ {x;p;g} }; /:$THREAD_ID]/{x;/:$THREAD_ID]/p} }; $ {x;/:$THREAD_ID]/p}"
