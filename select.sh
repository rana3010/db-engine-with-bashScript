echo "~~~ MENU ~~~"
echo "Please enter the number of choice:"
options=("Create DataBase" "List" "Connect To DB" "Drop DB" "Exit")
select val in "${options[@]}"
do
    case $val in
        "Create DataBase")
           clear ; . createdb.sh ; . backTOmenu.sh
            ;;
        "List")
           clear ; . listdb.sh ; . backTOmenu.sh
            ;;
        "Connect To DB")
            clear ; . connect.sh ; . backTOmenu.sh
            ;;
        "Drop DB")
            clear ; . drop.sh ; . backTOmenu.sh
            ;;  
        "Exit")
            echo "Goodbye :(" ; exit
            ;;
        *) clear ; echo "invalid option" ; . select.sh ;;
    esac
done