pipeline {
    agent any

environment {
     PATH = "C:\\Windows\\System32;C:\\Python311"
 }

    stages {
        stage('Build') {
            steps {
                bat 'python --version'
            }
        }
        stage('Create Docker Image') {
            steps {
                sh 'docker build -t my-python-app .'
            }
        }
        stage('Publish Docker Image') {
            steps {
                sh 'docker tag my-python-app wagh9161/assignment:latest'
                sh 'docker push wagh9161/assignment'
            }
        }
	stage('Test') {
            steps {
                sh 'docker run wagh9161/assignment'
                
            }
        }
    }
}
