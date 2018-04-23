#!/bin/sh
# use grep to find actors and remove headers in users.csv: 
grep "actor" users.csv > deleteme.csv
# use cut to keep only username, email, firstname and lastname
cut -d ',' -f2,3,4,5 deleteme.csv > deleteme2.csv
# use sort with -r to reverse alphabetical order
sort -k1 -r -t, deleteme2.csv > deleteme3.csv
# remove username column using cut again
cut -d ',' -f2,3,4 deleteme3.csv > deleteme4.csv
# reorder columns using awk
awk 'BEGIN {FS=OFS=","} {print $2,$3,$1}' deleteme4.csv > actors.csv
# clean up
rm deleteme.csv deleteme2.csv deleteme3.csv deleteme4.csv