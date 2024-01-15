pipeline {
    agent any
    
    environment {
        PYTHON_VERSION = '3.12.1'  
        DJANGO_SETTINGS_MODULE = 'ROOTS/
                                    |-- __init__.py
                                    |-- app/
                                    |   |-- migrations/
                                    |   |   |-- __init__.py
                                    |   |   |-- 0001_initial.py
                                    |   |-- templates/
                                    |   |   |-- index.html
                                    |   |-- __init__.py
                                    |   |-- admin.py
                                    |   |-- apps.py
                                    |   |-- models.py
                                    |   |-- tests.py
                                    |   |-- views.py
                                    |-- project/
                                    |   |-- __init__.py
                                    |   |-- asgi.py
                                    |   |-- settings.py
                                    |   |-- urls.py
                                    |   |-- wsgi.py
                                    |-- db.sqlite3
                                    |-- jenkinsfile
                                    |-- docker/
                                    |-- manage.py
                                    '  
        POSTGRES_DB = 'testroot'
        POSTGRES_USER = 'admin'
        POSTGRES_PASSWORD = credentials('0820804859f')  // ใช้ Jenkins credentials สำหรับรหัสผ่าน
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install Git') {
            steps {
                script {
                    sh 'apt-get update'
                    sh 'apt-get install -y git'
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                script {
                    sh 'python -m venv venv'
                    sh 'source venv/bin/activate && pip install -r requirements.txt'
                }
            }
        }

        stage('setup NGINX'){
            steps{
                sh'chmod +x nginx.sh
                ./nginx.sh'
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
