pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh 'ls -lrt'
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Approve') {
            steps {
                input "Pls approve"
            }
        }
        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('verify') {
            steps {
                sh 'pwd'
                sh 'cat output.txt'
            }
        }
    }

    post {
        success {
            sh 'terraform destroy -auto-approve'
        }

        always {
            deleteDir()
        }
    }
}