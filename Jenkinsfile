pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/savepat/Root-Testing-DevOps-baisc-Django-project-.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                script {
                    // ติดตั้ง dependencies ที่จำเป็น
                    sh 'pip install -r requirements.txt'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // รันเทสของ Django
                    sh 'python manage.py test'
                }
            }
        }

        stage('Build and Deploy') {
            steps {
                script {
                    // Build and deploy steps ของคุณ
                    // เช่น Docker build, push, deploy ลงบน server
                }
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD pipeline failed!'
        }
    }
}
