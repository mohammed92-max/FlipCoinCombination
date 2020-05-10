#!/bin/bash -x

read -p "Enter number to toss coin" noOfTimes
heads=0
tails=0

declare -A Singlet

for ((count=0; count<noOfTimes; count++))
do
        tossStatus=$((RANDOM%2))
        if [ $tossStatus -eq 1 ]
        then
                ((heads++))
                Singlet[$noOfTimes]="Heads"
        else
                ((tails++))
                Singlet[$noOfTimes]="Tails"
        fi
done

echo ${Singlet[$noOfTimes]}

