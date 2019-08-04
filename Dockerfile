from jenkinsci/jenkins:latest
USER root
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update  -qq \
    && apt-get install docker-ce python python-pip cron python-mysqldb -y 
RUN apt-get install  python-dev -y
#=18.06.1~ce-0~debian -y
RUN apt-get install libmariadbclient-dev -y
RUN pip install cronio python-dotenv boto3 mysql mysql-connector-python requests
RUN usermod -aG docker jenkins
