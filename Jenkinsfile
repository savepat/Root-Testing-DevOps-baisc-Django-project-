pipeline {
    agent any

    stages {
        stage('Checkout') {
            stage('Checkout') {
            steps {
                script {
                    // ใช้ Git executable จากเครื่องมือที่ได้ติดตั้ง
                    git 'clone https://github.com/savepat/Root-Testing-DevOps-baisc-Django-project-.git'
                }
            }
        }
        }

        stage('Build') {
            steps {
                // แทรกคำสั่ง build ของคุณที่นี่
                echo 'Building your project...'
            }
        }

        stage('Test') {
            steps {
                // แทรกคำสั่งทดสอบของคุณที่นี่
                echo 'Running tests...'
            }
        }

        stage('Deploy') {
            steps {
                // แทรกคำสั่งการ deploy ของคุณที่นี่
                echo 'Deploying your application...'
            }
        }
    }
}
