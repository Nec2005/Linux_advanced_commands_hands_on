#!/bin/bash
echo "Welcome!!"
read -p "Enter your name: " name
read -p "Enter your age: " age

read -p "Enter your average life your expectancy: " ale

if [[ $age -le 18 ]]
then
    echo "Student"
    echo "At least $(($age-18)) years to become a worker."
elif [[ $age -ge 10 ]] && [[ $age -lt 65 ]]
then
    echo "Worker"
    echo " $(($age-65)) years to retire"
elif [[ $age -ge 65 ]]
then
    if [[ $age -lt $ale ]]
    then
        echo "retired"
        echo "$(($ale-$age)) years to die"
    else
        echo -ne "\007"
        echo "!!! Already died !!!!"
        sleep 1
        clear
        echo "!!! Already died !!!!"
        sleep 1
        clear
        sleep 2
        echo "!!! Already died !!!!"
    fi
fi