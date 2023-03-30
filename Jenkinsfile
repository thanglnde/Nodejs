pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com') {
          sh label: '',script: 'docker build -t thangdz233/nodejs:v1 .'
          sh label: '',script: 'docker push thangdz233/nodejs:v1'
        }
      }
    }
    
    stage('Shh server') {
      steps {
        sshagent(['ssh-remote']) {
          sh 'ssh -o StrictHostKeyChecking=no -l vision 192.168.2.169 touch text.txt'
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
