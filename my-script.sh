#!/bin/sh
# use grep to find actors and remove headers in users.csv, then sort column 2 in reverse alphabetical, finish by displaying only rows FirstName LastName <email> 
grep "actor" users.csv | sort -k2 -r -t, | awk 'BEGIN {FS=OFS=","} {print $4,$5,$3}'