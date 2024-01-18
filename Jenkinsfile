pipeline {
    agent any

    stages {
        stage('Check SCM') {
            steps {
                
                checkout scm
            }
        }

        stage('Build Report') {
            steps {
                
                sh 'mvn clean install'  
            }
        }

    }

}
