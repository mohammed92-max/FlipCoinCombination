#!/bin/bash -x

read -p "Enter number to toss coin" noOfTimes
heads=0
tails=0

declare -A Singlet

for ((count=0; count<noOfTimes; count++))
do
	for ((count=0; count<noOfTimes; count++))
	do

        	tossStatus=$((RANDOM%2))
        	if [ $tossStatus -eq 1 ]
        	then
                	((heads++))
                	Doublet[$noOfTimes]="Heads"
        	else
                	((tails++))
                	Doublet[$noOfTimes]="Tails"
        	fi
	done
done

echo ${Doublet[$noOfTimes]}

headPercent=$((heads * 100 / noOfTimes))
tailPercent=$((tails * 100 / noOfTimes))

echo "Head percent"$headPercent
echo "Tail percent"$tailPercent
