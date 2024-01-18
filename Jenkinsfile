pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/your_username/your_repo.git'
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
    }
}
