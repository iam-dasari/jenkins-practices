@Library('jenkins-shared-library')_
pipeline {
    agent any

    options {
        timeout(time: 1, unit: 'HOURS')
    }

    stages {
        stage('Call Shared Library') {
            steps {
                script {
                    javaEKS()
                }
            }
        }
    }

}