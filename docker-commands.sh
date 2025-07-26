to check docker network 
-> docker network ls

dockerdb
dockeruser
dockerpassword


Docker network name : bagisto-22_bagisto-network

to run mysql container with network 
->docker run -d --name mysql18 --network bagisto-22_bagisto-network -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=dockerdb -e MYSQL_USER=dockeruser -e MYSQL_PASSWORD=dockerpassword mysql:8.0

to run mysql with bagisto container with network 
-> docker run -d --name bagisto-cont18 --network bagisto-22_bagisto-network -e DB_HOST=mysql18 -e DB_DATABASE=dockerdb -e DB_USERNAME=dockeruser -e DB_PASSWORD=dockerpassword -p 8082:80 bagisto18

To check docker logs with container name or id 
-> docker logs a723218eb5fc

To enter into container and check 
-> docker exec -it a723218eb5fc /bin/bash


--
Step 1: Prerequisites to Push Docker Image to AWS ECR
Make sure the following are ready:

Requirement	Status
✅ AWS CLI installed & configured	✅/❓
✅ IAM user with ECR permissions	✅/❓
✅ AWS region decided (e.g., ap-south-1)	✅/❓
✅ Docker image ready (built locally)	✅/❓

Let me know your answers to these:

Is AWS CLI installed on your system?

Did you already do aws configure with access key and region?

Do you have a Docker image ready to push (give image name & tag)?

Which AWS region are you using?

----

Once you confirm above, we’ll proceed with:

🔜 Step 2: Create ECR repository
🔜 Step 3: Tag the image properly (project-env-devops-initiator:v1)
🔜 Step 4: Login to ECR
🔜 Step 5: Push image to ECR

----
To create repo in ECR 
-> aws ecr create-repository --repository-name localbagisto-repo --region ap-south-1

