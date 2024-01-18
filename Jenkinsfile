pipeline {
    agent any

    stages {
        stage('Check SCM') {
            steps {
                // ตรวจสอบการเปลี่ยนแปลงใน SCM (Git)
                checkout scm
            }
        }

        stage('Build Report') {
            steps {
                // ทำการ build report (ตัวอย่าง: ใช้คำสั่งที่เหมาะสม)
                sh 'mvn clean install'  // ตัวอย่าง: การใช้ Maven เพื่อ build report
            }
        }

        // เพิ่ม stages อื่น ๆ ตามความต้องการ
    }

    post {
        success {
            // กระทำที่จะทำเมื่อทุก stage ผ่านโดยไม่มีข้อผิดพลาด
            echo 'Build successful!'
        }
        failure {
            // กระทำที่จะทำเมื่อมี stage ใด ๆ ล้มเหลว
            echo 'Build failed!'
        }
    }
}
