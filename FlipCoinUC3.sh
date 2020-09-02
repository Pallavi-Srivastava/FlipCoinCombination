#!/bin/bash
read -p "Enter How many times you want to flip:" n
flips=1
heads=0
tails=0
function coin1()
	{
		random1=$((RANDOM%2))
		echo $random1
	}
function coin2()
        {
                random2=$((RANDOM%2))
                echo $random2
        }
declare -A singlet
declare -A doublet
while [[ $flips -le $n ]]
do
     value1="$(coin1 $random1)"
     value2="$(coin2 $random2)"
     if [[ $value1 -eq 1 && $value2 -eq 1 ]]
     then
        echo "Heads";
	singlet[$flips]=Head;
	doublet[$flips]=Head,Head;
        heads=`expr $heads + 1`;
     elif [[ $value -eq 0 && $value2 -eq 0 ]]
     then
         echo "Tails";
	 singlet[$flips]=Tail;
	 doublet[$flips]=Tail,Tail;
         tails=`expr $tails + 1`;
     elif [[ $value -eq 1 && $value2 -eq 0 ]]
     then
         echo "Heads,Tails";
         singlet[$flips]=Head;
         doublet[$flips]=Head,Tail;
         tails=`expr $tails + 1`;
      elif [[ $value -eq 0 && $value2 -eq 1 ]]
     then
         echo "Tails,Heads";
         singlet[$flips]=Tail;
         doublet[$flips]=Tail,Head;
         tails=`expr $tails + 1`;
      fi
flips=`expr $flips + 1`;
done
echo "Singlet:" "${singlet[@]}"
echo "Doublet:" "${doublet[@]}"
exit;
