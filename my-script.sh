#!/bin/sh
# use grep to find actors and remove headers in users.csv, then use sort on column 2 in reverse alphabetical, finish by displaying only rows FirstName LastName <email> using awk
grep "actor" users.csv | sort -k2 -r -t, | awk 'BEGIN {FS=OFS=","} {print $4,$5,$3}'