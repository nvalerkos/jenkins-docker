# jenkins-docker


Docker image for jenkins with docker support    


##Note-  Chnage the line in Dockerfile where it reads apt install for docker-ce into `docker-ce=17.12.1~ce` depending on ther version of docker client you need to use.


## Build
docker build . -t jenkinsdocker

## Run
docker run -d -v jenkins_home:/var/jenkins_home --name jenkins -p 8080:8080 -p 50000:50000 jenkinsdocker

## Get password
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
