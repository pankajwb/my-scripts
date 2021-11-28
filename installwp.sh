#!/bin/bash
#
echo Lets install wordpress
cd ~/Downloads/
rm -rf latest.tar.gz
rm -rf latest
wget http://wordpress.org/latest.tar.gz
echo download finished
tar -zxf latest.tar.gz
echo Please enter the name of the new project
read NAME
mv wordpress "$NAME"
cp -r $NAME /var/www/html/
cd /var/www/html/"$NAME"
echo Please enter username for mysql or phpmyadmin
read USER
echo Please enter password for "$USER"
read PASS
echo Please enter new database name
read DBNAME
mysql -u "$USER" -p"$PASS" -Bse "CREATE DATABASE $DBNAME" 
echo Database successfully created
cp wp-config-sample.php wp-config.php
find -type f -name "wp-config.php" | xargs sed -i "s/database_name_here/$DBNAME/g"
find -type f -name "wp-config.php" | xargs sed -i "s/username_here/$USER/g"
find -type f -name "wp-config.php" | xargs sed -i "s/password_here/$PASS/g"
echo wp-config.php successfully modified
echo Now we you can carry on the installing the website through your favourite browser by going at http://localhost/"$NAME"
echo Thanks have a nice day
exit 0
