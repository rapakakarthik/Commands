First created a folder on local machine 
next go to the Githib.com on browser and create a new repository
give name to the repository any name 
dont add readme file and 

below copy the quick set up commands https --> : https://github.com/rapakakarthik/Terraform-AWS.git

next go to the local machine created folder and from there open vs code inside that open gitbash terminal 

first command we need to run the command 

git init : it will initialize the git repository in the local machine
next 
git add remote origin https://github.com/rapakakarthik/Terraform-AWS.git

next check remote origin repo is added or not 
git remote -v

so here now remote origin repo is added and now we need to push the files to the remote repository

next imp commands need to change the branch name with this command then only we can push the files to the remote repository

git branch -M main

git push -u origin main