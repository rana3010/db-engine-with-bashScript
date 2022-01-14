clear
echo "Welcome to DB engine :)"
if [ -d DB ]
then
	cd DB
else
	mkdir DB	
fi
. select.sh


