pipeline {
  agent { label 'Thangln' }

  stages {
    agent {
      docker { 
        registryUrl 'https://hub.docker.com'
        label 'dockerhub'
          }
        }
    stage('Build') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://hub.docker.com') {
          sh 'docker build -t thangdz233/nodejs:v2 .'
          sh 'docker push thangdz233/nodejs:v2'
        }
      }
    }
    stage('Deploy'){
      steps {
        sh 'docker run --name mynodejs -d thangdz233/nodejs:v2'
      }
    }
    
 

//     stage('Test') {
//       steps {
//         sh 'docker run --rm my-express-app npm test'
//       }
//     }
  }
}
