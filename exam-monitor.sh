#!/bin/bash
echo Please provide the correct code for the question
read a #input the instructor code
eval $a #evaluate it
for stu in $(cat /home/OMIS107/roster)
do
    v=$(diff /home/$stu/myexam ~/myexam | wc -l) # find differences in both directories
    if [ $v -ge 1 ]
    then
        echo $stu has a different answer >> error.txt
        #if any difference, pipe that they have a different answer in a txt file
    fi
done