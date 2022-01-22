echo "Enter the name of database you want to connect or type (back) to back to MENU: "
read databaseName
if [  $databaseName == "back" ]
then
   clear
	. select.sh
fi
if [[ -d "$databaseName" ]]
then
   cd $databaseName
   clear 
   echo "Welcome to $databaseName database :)"
   . select2.sh
else
   echo "It's not exists!"
    options=("Re-enter name of Database" "Create one" "Back to MENU" "Exit")
	select val in "${options[@]}"
	do
		case $val in
            "Re-enter name of Database")
            clear ; . connect.sh ; clear ; break
            ;;
             "Create one")
            clear ; . createdb.sh  ; break
            ;;
			 "Back to MENU")
            clear ; . select.sh ; clear ; break
            ;;
             "Exit")
            clear ; exit
            ;;
			* ) echo "Invalid Choice"
		esac
	done
fi