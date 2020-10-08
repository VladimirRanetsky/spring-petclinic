pipeline {
    agent {
        docker {
            image 'maven' 
            args '-v "$HOME/.m2":/root/.m2'
        }
    }
    stages {
        stage('Build') {            
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }

        stage('Create Docker Container') {            
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
    }
}