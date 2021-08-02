#! /bin/bash -x
declare -A Coin
declare -A Coin
declare -A Double
VAR1="H"
VAr2="T"
hhCount=0
ttCount=0
htCount=0
thCount=0
count=1
hcount=0
tcount=0
randomValue=$(($RANDOM%2+1));
if [ $randomValue -eq 1 ]
then
        echo "Head";
else
        echo "Tail";
fi
#Singlet
for((i=1;i<22;i++))
do
	randomValue=$(($RANDOM%2+1));
	if [ $randomValue -eq 1 ]
	then
        	Coin[$i]='H'
	else
        	Coin[$i]='T'
fi
done

for key in "${!Coin[@]}"
do
	if [[ ${Coin[$key]} -eq 'H' ]]
        then
                ((hCount++))
        else
                ((tCount++))
        fi
done
hper=$(( $hCount*100/20 ))
tper=$(( $tCount*100/20 ))
echo "Percentage of Head is $hper"
echo "Percentage of Tail is $tper"
#Doublet
while [ $count -ne 21 ]
do
    s=""
    for((i=0;i<2;i++))
    do
        randomValue=$(($RANDOM%2+1));
        if [ $randomValue -eq 1 ]
        then
              s="${s}$VAR1"
        else
            s="${s}$VAR2"
        fi
    done
Double[$count]="$s"
((count++))
done
for key in "${!Double[@]}"
do
     if [ ${Double[$key]} -eq 'HH' ]
        then
                ((hhCount++))
        elif [ ${Double[$key]} -eq 'TT' ]]
        then
                ((ttCount++))
        elif [ ${Double[$key]} -eq 'HT' ]
        then
                ((htCount++))
        else
                ((thCount++))
      fi
done
hhper=$(( $hhCount*100/20 ))
ttper=$(( $ttCount*100/20 ))
htper=$(( $htCount*100/20 ))
thper=$(( $thCount*100/20 ))
echo "Percentage of HH is $hhper"
echo "Percentage of TT is $ttper"
echo "Percentage of HT is $htper"
echo "Percentage of TH is $thper"
