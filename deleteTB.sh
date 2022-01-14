clear
echo "Enter the table you want to delete it:"
read table
if [[ -f "$table" ]]
then
	rm -i $table
else
	val1="Re-enter name of table"
	val2="Go back to select table MENU"
	echo "There is no table with this name!"
	select val in "$val1" "$val2"
	do
		case $val in
			$val1 ) clear ; . deleteTB.sh ; clear ; break;;
			$val2 ) clear ; . selectTable.sh ; clear ; break;;
			* ) echo "Invalid choice"
		esac
	done
fi
