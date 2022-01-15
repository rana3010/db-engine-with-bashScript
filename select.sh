echo "~~~ MENU ~~~"
echo "-Please Enter The Number Of Choice:"
options=("Create DataBase" "List" "Connect To DB" "Drop DB" "Quit")
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
        "Quit")
            clear ; exit
            ;;
        *) clear ; echo "invalid option $REPLY" ; . select.sh ;;
    esac
done