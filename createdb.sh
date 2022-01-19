echo "Enter the name of database you want to create or type (back) to back to MENU: "
read databaseName
if [  $databaseName == "back" ]
then
	clear 
	. select.sh
fi
if [[ -d "$databaseName" ]]
then
    echo "it's already exists!"
    options=("Create another one" "Back to MENU" "Exit")
	select val in "${options[@]}"
	do
		case $val in
             "Create another one")
            clear ; . createdb.sh      ; break
            ;;
			 "Back to MENU")
            clear ; . select.sh ; clear ; break
            ;;
             "Exit")
            	echo "Goodbye :("   ; exit
            ;;
			* ) echo "Invalid Choice"
		esac
	done
else
  mkdir $databaseName
  if [[ $? -eq 0 ]]
  then
    echo "Database Created Successfully :)"
  else
    echo "Error Creating Database $databaseName Please try again!"
  fi
fi