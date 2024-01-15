pipeline {
    agent any
    
    environment {
        PYTHON_VERSION = '3.12.1'  
        DJANGO_SETTINGS_MODULE = 'ROOTS.project.settings'                                 
        POSTGRES_DB = 'testroot'
        POSTGRES_USER = 'admin'
        POSTGRES_PASSWORD = credentials('savepat1234')  // ใช้ Jenkins credentials สำหรับรหัสผ่าน
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('hello') {
            steps {
                bat '"C:\\Users\\User\\AppData\\Local\\Programs\\Python\\Python312\\python.exe" hello.py'
            }
        }

        
        stage('Install Dependencies') {
            steps {
                script {
                    bat 'pip install -r requirements.txt'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    bat 'call .\\venv\\Scripts\\activate && python manage.py test'
                }
            }
        }

        stage('Build and Test') {
            steps {
                script {
                    bat 'docker build -t my-django-app:latest .'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

