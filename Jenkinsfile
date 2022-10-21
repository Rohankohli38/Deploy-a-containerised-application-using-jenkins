pipeline {
    agent {
	label 'docker-agent'
    }
    stages {
       stage ('Installing docker') {
          steps {
              sh 'sudo apt-get update'
	      sh 'sudo apt install docker.io'
          }
       }

       stage ('Building Docker image form docker file') {
          steps {
              sh 'docker build -t spring-app:0.2.1 .'
          }
       }
       stage ('Listing docker image') {
          steps {
              sh 'docker images'
          }
       }
       stage ('Building docker container using docker image') {
          steps {
              sh 'docker run -d -p 8080:8085 spring-app:0.2.1'
          }
       }
   }  
}

