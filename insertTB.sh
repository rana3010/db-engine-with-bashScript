echo "Enter the name of table or type (back) to go back to MENU: "
read table
if [  $table == "back" ]
then
	clear 
	. select2.sh
else
	if [[ -f "$table" ]]
	then
		NF=$(awk -F : 'END{print NR}' $table)
		((id = $NF - 2 )) 
		row="$id:"
		field=$(awk -F : 'END{print NF}' $table)
		for (( i = 2; i <= $field ; i++ )) 
		do
			name=$(awk -F : 'BEGIN {field = '$i'}{if(NR==1){print $field;}}' $table)
			datatype=$(awk -F : 'BEGIN {field = '$i'}{if(NR==2){print $field;}}' $table)
			echo "Enter the value of field ($name):"
			read val
			if [[ $datatype == *"Not NULL"* ]]
			then
				while  [[ $val == "" ]] 
				do
					echo  "This field must not be empty!"
					read val
				done			
			fi
			if [[ $datatype == *"int"* ]]
			then
				while ! [[ $val =~ ^[0-9]*$ ]] 
				do
					echo  "Invalid datatype!"
					read val
					while  [[ $val == "" ]] 
					do
						echo  "This field must not be empty!"
						read val
					done
				done
			fi
			if [[ i -eq $field ]]
			then
				row+="$val"
			else
				row+="$val:"
			fi
		done
		echo $row>>$table
		clear
		echo "The record is inserted to $table successfully :)"
		echo "Insert another record?"
		select check in "Yes" "No"
		do
			case $check in
				"Yes" ) clear ; . insertTB.sh    ; clear ; break;;
				"No" )  clear ; . select2.sh     ; clear ; break;;
				* ) echo "Invalid choice";
			esac
		done
		
	else
		echo "There is no table with this name!"
		val1="Re-enter name of table"
		val2="Back to MENU"
		select val in "$val1" "$val2"
		do
			case $val in
				$val1 ) clear ; . insertTB.sh    ; clear ; break;;
				$val2 ) clear ; . select2.sh ; clear ; break;;
				* ) echo "Invalid choice"
			esac
		done
	fi
fi