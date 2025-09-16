#!/bin/bash
while [ 1 -eq 1 ]
do
    echo ==================CHEATING DETECTING===============
    for stu in $(cat /home/OMIS107/roster)
    do
        #count the nuber of unique ip addresses for every student
        count=$(who | awk -v s="$stu" '{if ($1==s) print $5}' | sort | uniq | wc -l)
        #if more than one then print they are using multiple IP addresses
        if [ $count -gt 1 ]
        then
            echo On $(date), $stu is using multiple IP addresses which are: $(who | awk
-v s="$stu" '{if ($1==s) print $5}'|sort |uniq)
        fi
    done
    sleep 2
done