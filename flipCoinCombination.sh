#! /bin/bash -x
randomValue=$(($RANDOM%2+1));
if [ $randomValue == 1 ]
then
        echo "Head";
else
        echo "Tail";
fi