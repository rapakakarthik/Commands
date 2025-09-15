dpkg --list
-> to check the packages list in linux

dpkg --list zip 
-> To check the specfic pacakge is listed on linux 


To check the instance details or version of the instance 
lsb_release -a


###To connect to the remote instances or server use this command

go to the pem key path this pem key shloud have write permissions
ssh -i linux_key.pem ubuntu@13.201.5.39 

# To chanage the hostname on server use this command
sudo hostnamectl set-hostname <name>


Create a directory with subfolders in one command:

mkdir -p ~/projects/bash_learning/{scripts,backups,test}


🔎 Explanation:
mkdir → make directory
-p → create parent folders if not exist
{a,b,c} → create multiple subdirectories in one shot


