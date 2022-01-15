echo "Enter the name of Database you want to Connect To or enter "1" to go to MENU: "
read databaseName
if [  $databaseName == "1" ]
then
	clear 
	. select.sh
fi
if [[ -d "$databaseName" ]]
then
   cd $databaseName
   . selectTable.sh
else
   echo "it's Not exists!"
    options=("Re-enter name of Database" "Create one" "Back To MENU" "Quit")
	select val in "${options[@]}"
	do
		case $val in
            "Re-enter name of Database")
            clear ; . connect.sh ; clear ; break
            ;;
             "Create one")
            clear ; . createdb.sh ; clear ; break
            ;;
			 "Back To MENU")
            clear ; . select.sh ; clear ; break
            ;;
             "Quit")
            clear ; exit
            ;;
			* ) echo "Invalid Choice"
		esac
	done
fi