pipeline {
    agent {
        label "server"
    }

    stages {
        stage('1. Pull code') {
            steps {
                git branch: 'main', url: 'https://github.com/up1/demo-api-testing-postman.git'
            }
        }
        stage('2. Build image') {
            steps {
                sh 'docker compose build'
            }
        }
        stage('3. Deploy') {
            steps {
                sh 'docker compose up -d mock-api'
                sh 'docker compose up -d api'
            }
        }
        stage('4. API testing') {
            steps {
                sh 'rm -rf report/'
                sh 'docker compose up api_test --abort-on-container-exit --build'
            }
            post { 
                always {
                    junit 'report/*.xml'
                }
            }
        }
    }
    post { 
        always { 
            sh 'docker compose down'
        }
    }
}