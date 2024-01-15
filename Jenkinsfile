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
                    sh "python${PYTHON_VERSION} -m venv venv"
                    
                    // เปิดใช้งาน virtual environment
                    sh "source venv/bin/activate"
                    
                    // ติดตั้ง dependencies
                    sh "pip install Python==3.12.1 Django==5.0.1 psycopg2==2.9.1 gunicorn==20.1.0"
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
