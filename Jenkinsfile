pipeline {
    agent {
        docker {
            image 'maven' 
            args '-v /var/maven-packages:/root/.m2'
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