#!/bin/bash -x

read -p "Enter number to toss coin" noOfTimes
heads=0
tails=0

declare -A Singlet

for ((count=0; count<noOfTimes; count++))
do
	for ((count=0; count<noOfTimes; count++))
	do
		for ((count=0; count<noOfTimes; count++))
        	do
        		tossStatus=$((RANDOM%2))
        		if [ $tossStatus -eq 1 ]
        		then
                		((heads++))
                		Triplet[$noOfTimes]="Heads"
        			else
                		((tails++))
                		Triplet[$noOfTimes]="Tails"
        	done	fi
	done
done

echo ${Triplet[$noOfTimes]}

headPercent=$((heads * 100 / noOfTimes))
tailPercent=$((tails * 100 / noOfTimes))

echo "Head percent"$headPercent
echo "Tail percent"$tailPercent
