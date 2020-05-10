#!/bin/bash -x

heads=0
tails=0

tossStatus=$((RANDOM%2));

if [ $tossStatus -eq 1 ]
then
	echo "Heads is winner"
else
        echo "Tails is winner"
fi

