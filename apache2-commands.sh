1. apachectl configtest
1. apachectl configtest
To check the apache virtual host configuration syntax is correct or not  

2. apache2ctl -M
2. apachectl -M
with this command we can see list of enabled modules on apache2 server  


sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl status apache2
sudo systemctl start apache2
sudo systemctl enable apache2
Create virtual host configuration file on this path - this file will use to manage multiple sites to maintain seperate configuration on apache2 server
/etc/apache2/sites-available
touch qa-b2b-api.conf
--> add info in this file 


sudo a2dissite 000-default.conf
sudo a2ensite qa-b2b-api.conf
sudo systemctl reload apache2

sudo a2enmod rewrite
sudo systemctl restart apache2

sudo a2enmod headers
sudo systemctl restart apache2