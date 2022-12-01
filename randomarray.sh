#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.


#!/bin/bash
#a and #b

MAX_C=10
count=1
lar2=0
lar1=0
sma1=0
sma2=0

while [ "$count" -le $MAX_C ];
do
 number[$count]=$((RANDOM%899+100))
((count+=1))
done

echo "${number[*]}"

#c

sS=$(printf '%s\n' "${number[@]}" | sort -nu | tail -2)
sL=$(printf '%s\n' "${number[@]}" | sort -nu | head -2)

echo $sS | awk -F {print $1}
echo $sL | awk -F {print $1}