pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
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
