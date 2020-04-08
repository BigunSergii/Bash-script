#! /bin/bash
path="/home/serhii/Scripts/user_base.txt"
while read line; do
Name=`echo "$line" | awk '{print $1}'`
Lastname=`echo "$line" | awk '{print $2}'`
Age=`echo "$line" | awk '{print $3}'`
Date=`echo "$line" | awk '{print $4}'`
City=`echo "$line" | awk '{print $5}'`
Email=`echo "$line" | awk '{print $6}'`
echo "Name  ----------> $Name"
echo "Lastname  ----------> $Lastname"
echo "Age  ----------> $Age"
echo "Date  ----------> $Date"
echo "City  ----------> $City"
echo "Email  ----------> $Email"
sleep 10
echo -e "===================================>\n"
mysql -u root -p='1' itstep -e "INSERT INTO students (Name, Lastname, Age, Date, City, Email) VALUES (\"$Name\", \"$Lastname\", $Age, \"$Date\", \"$City\", \"$Email\");"
done < $path
mysql -u root -p='1' itstep -e "use itstep; select * from students;"
