#!/bin/bash

smurfs=(
        smurfette
	poetsmurf
	jokeysmurf
        heftysmurf
)

#Prepare day to day date iteration over "last week"
today=$(date +"%Y-%m-%d")
last_week_today=$(date -d "$today - 7 days" +"%Y-%m-%d")
day=$last_week_today

#Accumulate data
declare -A results
header="smurfname"
while [ $day != $today ]; do
    header="$header,$day"
    for smurf in "${smurfs[@]}"
    do
        results[$smurf]="${results[$smurf]},$smurf+$day" 
    done 
    next_day=$(date -d "$day +1 days" +"%Y-%m-%d")
    day=$next_day
done 

#Pretty print
printf "%s \n" $header >> smurf.csv
for smurf in "${smurfs[@]}"
do
   printf "%s %s\n" $smurf  ${results[$smurf]} >> smurf.csv
done 


