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

                withEnv(["HOME=${env.WORKSPACE}"]) { // fix for non existent user passed by Jenkins: https://stackoverflow.com/questions/51648534/unable-to-pip-install-in-docker-image-as-agent-through-jenkins-declarative-pipel

                    script {
                        sh "python -m pip install -r requirements.txt"
                    }

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