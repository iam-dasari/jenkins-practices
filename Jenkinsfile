pipeline {
    agent any

    options {
        timeout(time: 1, unit: 'HOURS')
    }

    environment {
        USER = 'Dasari'
    }

    stages {
        stage('Test Env') {
            steps {
                sh 'printenv'
            }
        }
        
    }

    post {
        success {
            echo "Success"
        }

        always {
            echo "Run always"
        }
    }
}