pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
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
                sh 'cat output.txt'
            }
        }
    }

    post {
        stage('Destroy') {
            steps {
                sh 'terraform destroy -auto-approve'
            }

        }
        always {
            deleteDir()
        }
    }
}