database="iti"
clear
echo "Welcome to $database database :)"
echo "Please Enter number:"

val1="To create table"
val2="To list all tables in the db"
val3="To insert in a table"
val4="To delete from a table"
val5="To delete table"
val6="To select a table"
val7="To go back"
val8="To exit from the DB engine"
check=1
while true
do
	select val in  "$val1" "$val2" "$val3" "$val4" "$val5" "$val6" "$val7" "$val8"
	do
		case $val in
			$val1 ) clear ; . createTB.sh ; check=1 ;  break;; 
			$val2 ) clear ; . listTB.sh ; check=1 ; break;;
			$val3 ) clear ; . insertTB.sh ; check=1 ; break;;
			$val4 ) clear ; . deleteFromTB.sh; check=1 ; break;;
			$val5 ) clear ; . deleteTB.sh ; check=1 ; break;;
			$val6 ) clear ; . selet.sh ; check=1 ; break;;
			$val7 ) clear ; . back.sh ; check=1 ; break;;
			$val8 ) clear ; exit;;
			* ) clear ; echo "Invalid choice!" ; check=0 ; break
		esac
	done	
	if [  $check -ne 0 ]
	then
		break
	fi
done


