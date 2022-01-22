clear
echo "Here the tables in this database:"
ls
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Please enter the number of choice: "
options=("Back to MENU" "Exit")
select val in "${options[@]}"
do
    case $val in
        "Back to MENU")
            clear ; . select2.sh
            ;;  
        "Exit")
            clear ; exit
            ;;
        *) echo "invalid option " ;;
    esac
done