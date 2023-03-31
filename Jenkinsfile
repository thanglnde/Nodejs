pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://hub.docker.com') {
          sh label: '',script: 'docker build -t thangdz233/nodejs:v2 .'
          sh label: '',script: 'docker push thangdz233/nodejs:v2'
        }
      }
    }
    stage('Deploy'){
      sh 'docker run --name mynodejs -d thangdz233/nodejs:v2'
    }
    
 

//     stage('Test') {
//       steps {
//         sh 'docker run --rm my-express-app npm test'
//       }
//     }
  }
}
