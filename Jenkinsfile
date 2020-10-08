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
                stash name: 'target', includes: 'target/*'
            }
        }

        stage('Create Docker Container') {
            steps {
                unstash name: 'target'
                sh 'cd ${WORKSPACE}'
                sh 'docker build -t test-petclinic-image --build-arg JAR_FILE=$(find ./target/ -maxdepth 1 -type f -name "*.jar") .'
            }
        }
    }
}