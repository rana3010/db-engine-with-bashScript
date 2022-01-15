echo "-Please Enter The Number Of Choice: "
options=("Back To MENU" "Quit")
select val in "${options[@]}"
do
    case $val in
        "Back To MENU")
            clear ; . select.sh
            ;;  
        "Quit")
            clear ; exit
            ;;
        *) clear ; echo "invalid option $REPLY" ; . backTOmenu.sh ;;
    esac
done