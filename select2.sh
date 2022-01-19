echo "Please enter the number Of choice:"
val1="Create table"
val2="List all tables in the db"
val3="Insert in a table"
val4="Delete from a table"
val5="Drop table"
val6="Select table"
val7="Exit from this database"
val8="Exit"
select val in  "$val1" "$val2" "$val3" "$val4" "$val5" "$val6" "$val7" "$val8"
do
	case $val in
		$val1 ) clear ; . createTB.sh          ; . select2.sh;; 
		$val2 ) clear ; . listTB.sh            ; . select2.sh;;
		$val3 ) clear ; . insertTB.sh          ; . select2.sh;;
		$val4 ) clear ; . deleteFromTB.sh      ; . select2.sh;;
		$val5 ) clear ; . dropTB.sh            ; . select2.sh;;
		$val6 ) clear ; . selectTB.sh          ; . select2.sh;;
		$val7 ) clear ; cd ..                  ;  . select.sh;;
		$val8 ) echo "Goodbye :("              ; exit;;
		* )     clear ; echo "Invalid choice!" ; . select2.sh ; 
	esac
done


