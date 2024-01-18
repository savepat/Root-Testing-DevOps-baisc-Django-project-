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

        stage('Build and Deploy') {
            steps {
                script {
                    // ทำตามคำสั่งที่ต้องการสำหรับการ Build และ Deploy
                    // เช่น docker-compose, docker build, ssh เข้า Server และ deploy
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
