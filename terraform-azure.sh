terraform install CLI form browser it will install the zip folder copy that zip to the c drive and create terrraform folder and paste into it 
and there unzip the terrafom folder there you can see the terraform.exe file 
this file need to copy into the environment variable path - means we are tell the windows system that our terraform.exe is in this folder or path 
so any time you run it will go this folder 

On windows search bar search for Edit the system environment variables
next click on the environment variables button
next you will see the 2 variable one is user varaible and other is system variable
go to the system variable and click on the path variable and click on the edit button
next click on the new button and paste the path of the terraform.exe file
next click on the ok button
next click on the ok button

Path will be like this : C:\Terraform\terraform_1.12.2_windows_amd64

open the command prompt and type terraform version
it will show the version of the terraform
terraform -v
#################################################################################

if we want to work with terraform with cloud platform open the vs code terminal select the gitbash terminal and 
first need to tell the terraform about the cloud platform we are using 

command for AWS is : aws login





#################################################################################


