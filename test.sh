#!/bin/bash

smurfs=(
        smurfette
	poetsmurf
	jokeysmurf
        heftysmurf
)

title=(
	smurfname:  
)

today=$(date +"%Y-%m-%d")

last_week_today=$(date -d "$today - 7 days" +"%Y-%m-%d")
echo $today
echo $last_week_today
day=$last_week_today

while [ $day != $today ]; do
    echo $i; 
    for smurf in "${smurfs[@]}"
    do
        printf "%s\n" $title ;
    done
     for smurf in "${smurfs[@]}"
    do
        printf "\t%s\n" $smurf+$day;
    done
    next_day=$(date -d "$day +1 days" +"%Y-%m-%d")
    day=$next_day
done
