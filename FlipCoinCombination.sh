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


for ((count=0;count<50;count++))
do
	TossChoice=$((RANDOM%3+1))
	CASE $TossChoice in

	1)
		singleToss=$((RANDOM%2))
		case $singleToss in
		
		0)
			$((CoinDict[H]++))
			;;
		1)
			$((CoinDict[T]++))
			;;
		esac
	2)
		coupleToss=$((RANDOM%4))
		case=$coupleToss in

		0)
			$((CoinDict[HH]++))
			;;
		1)
			$((CoinDict[HT]++))
			;;
		2)
			$((CoinDict[TH]++))
			;;
		3)
			$((CoinDict[TT]++))
			;;
		esac
		;;
	3)
		tripleToss=$((RANDOM%8))
		case $tripleToss in
		
		0)
			$((CoinDict[HHH]++))
			;;
		1)
			$((CoinDict[HHT]++))
			;;
		2)
			$((CoinDict[THH]++))
			;;
		3)
			$((CoinDict[HTH]++))
			;;
		4)
                        $((CoinDict[TTT]++))
                        ;;

		5)
                        $((CoinDict[TTH]++))
                        ;;

		6)
                        $((CoinDict[HTT]++))
                        ;;
	
		7)
                        $((CoinDict[THT]++))
                        ;;

		esac
		;;
	esac
done

echo ${CoinDict[@]}
echo ${CoinDict[@]}

winCombination=`printf %s\n* ${CoinDict[@]} | sort -nr | head -1`
echo $winCombination

for l in ${CoinDict[@]}
do
	if [ ${CoinDict[$1]} -eq $winCombination ]
	then
		echo "Winning combination is " $1
	fi
done


































