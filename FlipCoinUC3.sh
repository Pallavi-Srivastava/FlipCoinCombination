#!/bin/bash
read -p "Enter How many times you want to flip:" n
flips=1
Head=0
Tail=0
Ht=0
Th=0
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
declare -A doublet
while [[ $flips -le $n ]]
do
     value1="$(coin1 $random1)"
     value2="$(coin2 $random2)"
     if [[ $value1 -eq 1 && $value2 -eq 1 ]]
     then
        echo "HH";
	doublet[$flips]=HH;
        Head=`expr $Head + 1`;
     elif [[ $value -eq 0 && $value2 -eq 0 ]]
     then
         echo "TT";
	 doublet[$flips]=TT;
         Tail=`expr $Tail + 1`;
     elif [[ $value -eq 1 && $value2 -eq 0 ]]
     then
         echo "HT";
         doublet[$flips]=HT;
         Ht=`expr $Ht + 1`;
      elif [[ $value -eq 0 && $value2 -eq 1 ]]
     then
         echo "TH";
         doublet[$flips]=TH;
         Th=`expr $Th + 1`;
      fi
flips=`expr $flips + 1`;
done
echo "Doublet:" "${doublet[@]}"
exit;
