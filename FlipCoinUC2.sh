#!/bin/bash
read -p "Enter How many times you want to flip:" n
flips=1
heads=0
tails=0
function coin()
	{
		random=$((RANDOM%2))
		echo $random
	}
declare -A singlet
while [[ $flips -le $n ]]
do
     value="$(coin $random)"
     if [ $value -eq 1 ]
     then
        echo "Heads";
	singlet[$flips]=Head;
        heads=`expr $heads + 1`;
     else [ $value -eq 0 ]
         echo "Tails";
	 singlet[$flips]=Tail;
         tails=`expr $tails + 1`;
      fi
flips=`expr $flips + 1`;
done
echo "Head Won $heads Times" "and" "Tail won $tails Times."
echo "${singlet[@]}"
exit;
