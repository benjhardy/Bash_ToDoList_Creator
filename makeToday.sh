#!/bin/bash

## This Script creates a bullet journal inspired to-do-list
## wtf is a bullet Journal, well i read about it after jonbmartin mentioned it,
## and I liked the x vs o concept so yeah adapting my to-do-list template 
## Also have really like the idea of brainDump section of a journal



echo -n -e "To-Do-List ---- > 'C' (Create new list) 'A' (Add new goal) 'X' (Mark as done!) 'D' (Delete goal)\n"
read entry

case $entry in

    C)  # (Create new list)
        # title of the To-Do-List
        today=$(date +"%F")
        touch $today
        # Basic functionality - 
        # create the list for the day with a shnazzy template
        # Header
        printf "_____________________________________________________________________________________________\n+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n---------------------------------------------------------------------------------------------\n---------------------------------------------------------------------------------------------\n----------------------------------------TO-DO-LIST-------------------------------------------\n----------------------------------------$today-------------------------------------------\n\n" > $today
        # read ...
        echo 'How many goals would you like to add?'
        read numGoals
        for (( c=1; c<=$numGoals; c++ ))
        do
            # ask for the goals
            echo -n "$c.) "
            read goalStr
            # put the goal into the file...
            echo -e "$c.) $goalStr\n" >> $today

        done
    ;;
    A) # (Add new goal)
        read newGoal
        echo -e $newGoal >> $today

    ;;
    X) # (Mark as Done!)
        cat $today
        echo 'What goal would you like to mark as Done(X)?'
        read goalX
        sed '/'$goalX'.)/ s/$/ ---> (X)/' $today | tee $today
        

    ;;
    D)
        cat $today
        echo 'What goal would you like to Delete(D)?'
        read goalDel
        echo 'Can not delete goal:'$goalDel' yet, Ben needs to code this still...'

    ;;


esac
# Scenarios
# 
# 1. CREATE a new DAY/list
# 2. add to Today
# 3. delete from Today
# 4. Cross off stuff from Today
# 5. 