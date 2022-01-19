echo "Enter the name of database you want to delete or type (back) to back to MENU: "
read databaseName
if [  $databaseName == "back"  ]
then
	clear 
	. select.sh
fi
if [[ -d "$databaseName" ]]
then
	rm -r -i $databaseName
	if [[ ! -d "$databaseName" ]]
	then
    	echo "Deleted!"
	fi

else
	
	echo "There is no Database with this name!"
    options=("Re-enter name of Database" "Back to MENU" "Exit")
	select val in "${options[@]}"
	do
		case $val in
             "Re-enter name of Database")
            clear ; . drop.sh ; clear ; break
            ;;
			 "Back to MENU")
            clear ; . select.sh ; clear ; break
            ;;
             "Exit")
            echo "Goodbye :(" ; exit
            ;;
			* ) echo "Invalid choice"
		esac
	done
fi