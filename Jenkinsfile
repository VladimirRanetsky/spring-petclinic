pipeline {
  agent {
    docker {
      image 'maven'
      args '-v $HOME/tst:/root/.m2'
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