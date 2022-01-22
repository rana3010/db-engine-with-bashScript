clear
echo "Welcome to DB engine :)"
if [ -d DB ]
then
	cd DB
else
	mkdir DB
	cd DB	
fi


alias createdb.sh="createDB"
alias createTB.sh="createTB"
alias drop.sh="dropDB"
alias dropTB.sh="dropTB"
alias listdb.sh="listDB"
alias listTB.sh="listTB"
alias connect.sh="connectDB"
alias selectTB.sh="selectTB"
alias insertTB.sh="insertTB"
alias deleteFromTB.sh="deleteFromTB"



. select.sh


