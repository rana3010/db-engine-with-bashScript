clear
echo "Welcome to DB engine :)"
if [ -d DB ]
then
	cd DB
else
	mkdir DB
	cd DB	
fi
. select.sh


