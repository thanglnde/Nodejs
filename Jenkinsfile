pipeline {
  agent { label 'Thangln' }

  stages {
    stage('Build') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://hub.docker.com') {
          sh label: 'dockerhub',script: 'docker build -t thangdz233/nodejs:v2 .'
          sh label: 'dockerhub', script: 'docker push thangdz233/nodejs:v2'
        }
      }
    }
    stage('Deploy'){
      steps {
        sh label: 'dockerhub',script: 'docker run --name mynodejs -d thangdz233/nodejs:v2'
      }
    }
    
 

//     stage('Test') {
//       steps {
//         sh 'docker run --rm my-express-app npm test'
//       }
//     }
  }
}
