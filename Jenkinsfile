pipeline {
    agent {
        docker {
            image 'maven' 
            args '-v /var/jenkins_home/.m2:/root/.m2'
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