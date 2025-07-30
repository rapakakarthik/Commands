To login to the azure via terminal (cmd)
--> az login


in azure cli use this command to create the Resource Group - login in to the azure and check this resource group is created or not 
az group create --name rg-karthik-cli --location centralindia

Output will confirm creation in JSON

2. List All RGs
az group list --output table

You will see a table like
Name               Location     Status
-----------------  -----------  --------
rg-karthik-demo     centralindia  Succeeded
rg-karthik-cli      centralindia  Succeeded


