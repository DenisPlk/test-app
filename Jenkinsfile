pipeline {
  agent any
   tools {
      maven 'Maven'
  stages {
      stage ("build jar") {    
          steps {
              echo 'building the app'
              sh 'mvn package'             
          }
      }  
      stage ("build image") { 
          steps {
             script { 
                  echo 'building the image'
                  withCredentials([usernamePassword(credentialsId: '666125743361', passwordVariable: 'PASS', usernameVariable: 'USER' ])
                      sh 'docker build -t 666125743361.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1 .'
                      sh "echo $PASS | docker login -u $USER --password-stdin"
                      sh 'docker push 666125743361.dkr.ecr.eu-central-1.amazonaws.com/my-app:1.1'
          }
      } 
      stage("deploy") {
          steps {
              echo 'deploying the app'
          }  
      }
  }
}
