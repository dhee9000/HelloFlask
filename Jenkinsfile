pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps{
                checkout scm
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