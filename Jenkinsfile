pipeline {
  agent any

  stages {
    stage('Shh server') {
      steps {
        sshagent(['ssh-remote']) {
          sh 'ssh -o StrictHostKeyChecking=no -l vision 192.168.2.169 touch text.txt'
                }
            }
        }
    
    stage('Build') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com') {
          sh 'docker build -t thangdz233/nodejs:v1 .'
          sh 'docker push thangdz233/nodejs:v1'
        }
      }
    }
   

//     stage('Test') {
//       steps {
//         sh 'docker run --rm my-express-app npm test'
//       }
//     }
  }
}
