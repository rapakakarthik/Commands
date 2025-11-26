sudo apt update -y && sudo apt upgrade -y

sudo apt install curl wget gnupg apt-transport-https -y

curl -o webmin-setup-repo.sh https://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repo.sh
sudo sh webmin-setup-repo.sh

y

#Make it executable
chmod +x webmin-setup-repo.sh

#Run the script with sudo 
sudo ./webmin-setup-repo.sh

# In terminal it show this command copy it and paste with sudo 
sudo apt-get install --install-recommends webmin usermin

sudo systemctl status webmin
sudo systemctl start webmin

https://13.203.232.121:10000/

# After login we can see the webmin dashboard it asks usernae and password 
before that the ubuntu user need to have password 
got the server run this command 
sudo passwd ubuntu # means created new password for ubuntu user 
enter password 2 times 

now again go to the dashboard try to login with ubuntu and new password which have you changed on server 

if want to login with root user then the above same password need to do for root user aslo need to create new password 
sudo passwd root
type password 

next try login to webmin with root credentials
