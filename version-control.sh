#!/bin/bash
#creating a directory for every student in our directory
for stu in $(cat /home/OMIS107/roster)
do
    mkdir -p $stu
done
#start an infinite loop
while [ 1 -eq 1 ]
do
    #loop through each student on the roster
    for stu in $(cat /home/OMIS107/roster)
    do
        #checks how many files are in the student's directory inside the instructor's
directory
        check=$(ls ~/$stu | wc -w)
        if [ $check -eq 0 ]
        then
            #check to see if myscript is in the student's directory
            if [ -f /home/$stu/myscript.sh ]
            then
                #copy the first version into the instructor's directory
                cp /home/$stu/myscript.sh ~/$stu/version1
            else
                #if the file doesn't yet exist, print a message
                echo $stu has not yet created myscript.sh
            fi
        else
            #if the file does exist, count the differences between the student's and directors version of the file
            m=$(diff /home/$stu/myscript.sh ~/$stu/version$check | wc -l)
            if [ $m -ge 1 ]
            then
                #copy the new version into the instructor's student directory
                cp /home/$stu/myscript.sh ~/$stu/version$(($check+1))
            fi
        fi
    done
    sleep 10
done