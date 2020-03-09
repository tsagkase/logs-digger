#!/bin/sh

# Prints the previous log line before a PID change in log

YEAR=202.

sed -n -E "1h;1!{/\] Hangfire/{:a n;/^$YEAR-/! b a};H;/^$YEAR-/{x;/\[([0-9]+):[0-9]+\].*\[\1:/! p}}"
# sed -n -E "1{/] Hangfire/!h};1!{/\] Hangfire/{:a n;/^$YEAR-/! b a};H;/^$YEAR-/{x;/\[([0-9]+):[0-9]+\].*\[\1:/! p}}"
