echo "Please enter the number of choice: "
options=("Back to MENU" "Exit")
select val in "${options[@]}"
do
    case $val in
        "Back to MENU")
            clear ; . select.sh
            ;;  
        "Exit")
            clear ; exit
            ;;
        *) clear ; echo "invalid option " ; . backTOmenu.sh ;;
    esac
done