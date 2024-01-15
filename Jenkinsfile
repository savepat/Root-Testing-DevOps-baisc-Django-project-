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

        stage('Install Dependencies') {
            steps {
                script {
                    // สร้าง virtual environment
                    bat 'python -m venv venv'

                    // เปิดใช้งาน virtual environment และติดตั้ง dependencies
                    bat '.\\venv\\Scripts\\activate && pip install -r requirements.txt'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // เปิดใช้งาน virtual environment และรันคำสั่งทดสอบ
                    bat '.\\venv\\Scripts\\activate && python manage.py test'
                }
            }
        }

        stage('Build and Test') {
            steps {
                script {
                    // สร้าง Docker image
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
