pipeline {
    agent any
    
    environment {
        PYTHON_VERSION = '3.12.1'  
        DJANGO_SETTINGS_MODULE = 'ROOTS.project.settings'                                 
        POSTGRES_DB = 'testroot'
        POSTGRES_USER = 'admin'
        POSTGRES_PASSWORD = credentials('savepat1234')  
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your version control system
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install Python dependencies
                script {
                    sh "${PYTHON_HOME}/bin/pip install -r requirements.txt"
                }
            }
        }

        stage('Run Migrations') {
            steps {
                // Apply database migrations
                script {
                    sh "${PYTHON_HOME}/bin/python manage.py migrate"
                }
            }
        }

        stage('Run Tests') {
            steps {
                // Run Django tests
                script {
                    sh "${PYTHON_HOME}/bin/python manage.py test"
                }
            }
        }

        stage('Collect Static Files') {
            steps {
                // Collect static files for production
                script {
                    sh "${PYTHON_HOME}/bin/python manage.py collectstatic --noinput"
                }
            }
        }

        stage('Deploy') {
            steps {
                // Deploy your Django application
                // This stage depends on your deployment process
            }
        }
    }

    post {
        success {
            // Actions to perform when the build is successful
            echo 'Build successful!'

            // Example: Trigger another job
            build job: 'Deploy-to-Staging'
        }

        failure {
            // Actions to perform when the build fails
            echo 'Build failed!'
        }

        always {
            // Actions to perform regardless of build outcome
            echo 'Cleaning up...'
        }
    }