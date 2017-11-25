#!/bin/bash

smurfs=(
        smurfette
	poetsmurf
	jokeysmurf
        heftysmurf
)


today=$(date +"%Y-%m-%d")
last_week_today=$(date -d "$today - 7 days" +"%Y-%m-%d")
echo $today
echo $last_week_today
day=$last_week_today

while [ $day != $today ]; do
    echo $i; 
    printf "\n%s\n" $day >> smurf.csv
    for smurf in "${smurfs[@]}"
    do
        printf "%s,%20s \n" $smurf $smurf+$day >> smurf.csv
    done 
    next_day=$(date -d "$day +1 days" +"%Y-%m-%d")
    day=$next_day
done 
