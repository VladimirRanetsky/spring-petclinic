pipeline {
    agent {
        docker {
            image 'maven' 
            args '-v /root/.m2:/root/.m2'
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
                sh 'docker build --build-arg JAR_PATH=$(find ${WORKSPACE}/target/ -maxdepth 1 -type f -name "*.jar") .'
            }
        }
    }
}