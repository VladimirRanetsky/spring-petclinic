pipeline {
    agent {
        docker {
            image 'maven' 
            args '-v maven-packages:/root/.m2'
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