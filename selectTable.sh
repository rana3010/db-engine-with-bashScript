echo "Please Enter number:"
val1="To create table"
val2="To list all tables in the db"
val3="To insert in a table"
val4="To delete from a table"
val5="To delete table"
val6="To select a table"
val7="To go back"
val8="To exit from the DB engine"

select val in  "$val1" "$val2" "$val3" "$val4" "$val5" "$val6" "$val7" "$val8"
do
	case $val in
		$val1 ) clear ; . createTB.sh          ; . selectTable.sh;; 
		$val2 ) clear ; . listTB.sh            ; . selectTable.sh;;
		$val3 ) clear ; . insertTB.sh          ; . selectTable.sh;;
		$val4 ) clear ; . deleteFromTB.sh      ; . selectTable.sh;;
		$val5 ) clear ; . deleteTB.sh          ; . selectTable.sh;;
		$val6 ) clear ; . selectTB.sh          ; . selectTable.sh;;
		$val7 ) clear ; cd ..                  ;      . select.sh;;
		$val8 ) echo "Goodbye :("              ; exit;;
		* )     clear ; echo "Invalid choice!" ; . selectTable.sh ; 
	esac
done


