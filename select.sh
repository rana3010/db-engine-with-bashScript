#!/bin/bash

echo "Please enter your choice: "
options=("Create DataBase" "List" "Connect To DB" "Drop DB" "Quit")
select val in "${options[@]}"
do
    case $val in
        "Create DataBase")
           clear ; . createdb.sh ; select.sh
            ;;
        "List")
           clear ; . listdb.sh ; select.sh
            ;;
        "Connect To DB")
            clear ; . connect.sh ; select.sh
            ;;
        "Drop DB")
            clear ; . drop.sh ; select.sh
            ;;  
        "Quit")
            clear ; break
            ;;
        *) clear ; echo "invalid option $REPLY" ; select.sh ;;
    esac
done