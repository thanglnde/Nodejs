pipeline {
  agent { label 'Thangln' }

  stages {
    stage('Build') {
      steps {
          sh 'docker build -t thangdz233/nodejs:v2 .'
          sh 'docker push thangdz233/nodejs:v2'
      }
    }
    stage('Deploy'){
      steps {
        sh 'docker run -p 49160:3000 -d thangdz233/nodejs:v2'
      }
    }
    
 

//     stage('Test') {
//       steps {
//         sh 'docker run --rm my-express-app npm test'
//       }
//     }
  }
}
