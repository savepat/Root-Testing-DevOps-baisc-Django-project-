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
                    sh 'pip install -r requirements.txt'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    sh 'source venv/bin/activate && python manage.py test'
                }
            }
        }

        stage('Build and Test') {
            steps {
                script {
                    docker.build('my-django-app:latest')
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
