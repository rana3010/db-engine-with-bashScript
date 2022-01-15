echo "Enter the name of table or type (back) to go back to MENU: "
read table
if [  $table == "back" ]
then
	clear 
	. selectTable.sh
fi

if [[ -f "$table" ]]
then
	row=`head -n1 $table`
	
else
	val1="Re-enter name of table"
	val2="Go back to select table MENU"
	echo "There is no table with this name!"
	select val in "$val1" "$val2"
	do
		case $val in
			$val1 ) clear ; . insertTB.sh.sh ; clear ; break;;
			$val2 ) clear ; . selectTable.sh ; clear ; break;;
			* ) echo "Invalid choice"
		esac
	done
fi
