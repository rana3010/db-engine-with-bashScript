echo "Enter the name of Database you want to delete or enter "1" to go to MENU: "
read databaseName
if [  $databaseName == "1"  ]
then
	clear 
	. select.sh
fi
if [[ -d "$databaseName" ]]
then
	rm -r -i $databaseName
    echo "Deleted!"
else
	
	echo "There is no Database with this name!"
    options=("Re-enter name of Database" "Back To MENU" "Quit")
	select val in "${options[@]}"
	do
		case $val in
             "Re-enter name of Database")
            clear ; . drop.sh ; clear ; break
            ;;
			 "Back To MENU")
            clear ; . select.sh ; clear ; break
            ;;
             "Quit")
            clear ; exit
            ;;
			* ) echo "Invalid choice"
		esac
	done
fi