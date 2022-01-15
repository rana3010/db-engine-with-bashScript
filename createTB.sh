echo "Enter the name of table you want to create or type (back) to go back to MENU: "
read table
if [  $table == "back" ]
then
	clear 
	. selectTable.sh
fi
if [[ -f "$table" ]]
then
	echo "Error: the table is created before"
	val1="Re-enter name of table"
	val2="Go back to select table MENU"
	select val in "$val1" "$val2"
	do
		case $val in
			$val1 ) clear ; . createTB.sh ; clear ; break;;
			$val2 ) clear ; . selectTable.sh ; clear ; break;;
			* ) echo "Invalid choice"
		esac
	done
else
	touch $table
	row1="ID:"
	row2="int:"
	row3="Not NULL:"
	echo "ID is created in the first field as PK"
	i=2
	function insert {
	echo "Enter field number $i:"
	read field
	row1+="$field"
	echo "Choose the datatype:"
	select datatype in "Integer" "String"
	do
		case $datatype in
			"Integer" ) row2+="int"; break;;
			"String" ) row2+="string"; break;;
			* ) echo "Invalid choice";
		esac
	done
	echo "Choose it can be NULL or not:"
	select prop in "NULL" "Not NULL"
	do
		case $prop in
			"NULL" ) row3+=""; break;;
			"Not NULL" ) row3+="Not NULL"; break;;
			* ) echo "Invalid choice";
		esac
	done
	echo "Insert another field?"
	select check in "Ok" "No"
	do
		case $check in
			"Ok" ) ((i=i+1)) ;
			row1+=":";row2+=":"; row3+=":"
			insert ; 
			break;;
			"No" ) break;;
			* ) echo "Invalid choice";
		esac
	done
	}
	insert
	echo $row1>>$table
	echo $row2>>$table
	echo $row3>>$table
	echo "table $table created successfully :)"
	echo "------------------------------------"
	
	
fi
