pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps{
                checkout scm
            }
        }

        stage('Test Dependencies') {

            agent { docker { image 'python:slim' } }

            steps {

                echo "Installing Dependencies..."

                script {
                    sh "python -m pip install -r requirements.txt"
                }

            }
        }

        stage('Build Docker Image') {
            steps {
                
                echo "Building Docker Image..."

                script {
                    sh "docker build . -t helloflask:latest"
                }

            }
        }

    }

}