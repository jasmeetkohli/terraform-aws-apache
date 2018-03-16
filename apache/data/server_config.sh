#!/bin/bash

apt-get update
apt-get install -y apache2
service apache2 start
service apache2 status
if [ $? -ne 0 ]
then
	echo "Unable to start service apache2"
	exit 1
fi

mkdir -p /var/www/html/foo.com/public
echo "<html><body>Hello World</body></html>" > /var/www/html/foo.com/public/index.html

touch /etc/apache2/sites-available/foo.com.conf
echo "<VirtualHost *:80>

        ServerAdmin jasmeetkohlisingh@gmail.com
        ServerName  foo.com
        ServerAlias www.foo.com


        DirectoryIndex index.html
        DocumentRoot /var/www/html/foo.com/public

        LogLevel warn
        ErrorLog /var/log/apache2/error_foo.com.log
        CustomLog /var/log/apache2/access_foo.com.log combined
</VirtualHost>" > /etc/apache2/sites-available/foo.com.conf


a2ensite foo.com.conf
service apache2 reload