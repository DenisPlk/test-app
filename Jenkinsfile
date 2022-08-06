pipeline {
  agent any
   tools {
      maven 'maven-3.8.4'
   }
   environment {
        DOCKER_REPO_SERVER = '666125743361.dkr.ecr.eu-central-1.amazonaws.com'
        DOCKER_REPO = "${DOCKER_REPO_SERVER}/my-app"
   }
   stages {
      stage ("build jar") {    
          steps {
              echo 'building the app'
                          
          }
      }  
      stage ("build image") {
            steps {
                script {
                    echo "building the docker image..."
                    withCredentials([usernamePassword(credentialsId: 'aws-cred', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        sh "docker build -t 666125743361.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1 ."
                        sh "echo $PASS | docker login -u $USER --password-stdin ${DOCKER_REPO_SERVER}"
                        sh "docker push 666125743361.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1"
                    }
                }
            }
  }  
 }
}
