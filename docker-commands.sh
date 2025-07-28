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

## 28/July/25##

1. docker info 
--> verify the docker is running

2. docker images
--> To check the docker images 

3. docker ps
--> To check the running containers

4. docker ps -a
--> To check the all running and stopped containers

5. docker network ls
--> To check the docker network list

6. docker rmi <imagename or image id>
--> To remove or delete the image

7. docker stop <container id or name>
7. docker start <container id or name>
--> To start the container or stop the container 

8. docker rm <container id or name>  [Note: before deleting the container need to stop the container first]
--> To remove or delete the container

9. docker rm $(docker ps -aq) 

10. docker build -t myapp .       --> To build the docker image form docker file [. denotes Dockerfile]
10. docker build -t myapp:v1 .    --> To build the image with tag or version id


11. docker run -d -p 8081:80 --name <container-name> myapp
--> To run the container based on image 

12. docker run -d -p 8081:80 --network <network -name> --name <container-name> myapp
--> To run the container with network attaching to the container

13. docker exec -it <container-id> /bin/bash
--> To enter or connect into container 

14. docker restart <container-name or id>
--> To restart the container

15. docker logs <container-id>
--> To check the logs of container or app logs 