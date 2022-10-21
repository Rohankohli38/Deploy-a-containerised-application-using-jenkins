pipeline {
    agent {
	label 'docker-agent'
}
    stages {
       stage ('Building Docker image form docker file') {
          steps {
	      sh 'cd '
              sh 'docker build -f Dockerfile -t spring-app:0.2.1 .'
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

