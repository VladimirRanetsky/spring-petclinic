pipeline {
    agent any
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'maven' 
                    args '-v "$HOME/.m2":/root/.m2'
                }
            }           
            steps {
                sh 'mvn -B -DskipTests clean package'
                stash name: 'target', includes: '${WORKSPACE}/target/*.jar'
            }
        }

        stage('Create Docker Container') {
            steps {
                unstash name: 'target'
                sh 'docker build -t test-petclinic-image --build-arg JAR_PATH=$(find ${WORKSPACE}/target/ -maxdepth 1 -type f -name "*.jar") .'
            }
        }
    }
}