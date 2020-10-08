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
                sh 'echo ${WORKSPACE}/target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar'
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}