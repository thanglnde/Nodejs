pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t my-express-app .'
      }
    }

    stage('Test') {
      steps {
        sh 'docker run --rm my-express-app npm test'
      }
    }
  }
}
