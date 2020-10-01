pipeline {
<<<<<<< HEAD
    agent {
        docker {
            image 'maven' 
            args '-v /home:/root/.m2'
        }
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean install'
      }
    }

  }
}