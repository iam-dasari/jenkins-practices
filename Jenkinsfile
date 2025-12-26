pipeline {
    agent any

    options {
        timeout(time: 1, unit: 'HOURS')
    }

    environment {
        USER = 'Dasari'
    }

    parameters {
        string(name: 'PERSON', defaultValue: 'Dasari', description: 'PERSON NAME')
        text(name: 'BIOGRAPHY', defaultValue: 'Guntur', description: 'BIOGRAPHY NAME')
        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'TOGGLE VALUE')
        choice(name: 'CHOICE', choices: ['one', 'two', 'three'], description: 'pick something')
        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }

    stages {
        stage('Test Env') {
            steps {
                sh 'printenv'
            }
        }
        stage('Validate Credentials') {
            environment {
                AUTH = credentials('ssh-auth')
            }
            steps {
                sh 'printenv'
            }
        }
        stage('access parameters') {
            steps {
                echo "${params.PERSON}"
                echo "${params.BIOGRAPHY}"
                echo "${params.TOGGLE}"
                echo "${params.CHOICE}"
                echo "${params.PASSWORD}"
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