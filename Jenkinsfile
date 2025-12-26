pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building..."
                sh "ls -lrt"
                sh '''
                pwd
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing..."
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying..."
                //error "Failed"
            }
        }
    }

    post {
        always {
            echo "I will always run"
        }
        success {
            echo "Success"
        }
        failure {
            echo "Failure"
        }
    }
}