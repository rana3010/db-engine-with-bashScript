echo "Enter the name of Database you want to Create or enter "1" to go to MENU: "
read databaseName
if [  $databaseName == "1" ]
then
	clear 
	. select.sh
fi
if [[ -d "$databaseName" ]]
then
    echo "it's already exists!"
    options=("Create another one" "Back To MENU" "Quit")
	select val in "${options[@]}"
	do
		case $val in
             "Create another one")
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
else
  mkdir $databaseName
  if [[ $? == 0 ]]
  then
    echo "Database Created Successfully"
  else
    echo "Error Creating Database $databaseName Please try again!"
  fi
fi