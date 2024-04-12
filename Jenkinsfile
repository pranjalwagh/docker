pipeline {
    agent any

environment {
     PATH = "C:\\Windows\\System32;C:\\Users\\Sahil\\AppData\\Local\\Programs\\Python\\Python312;C:\\Program Files\\Docker\\Docker\\resources\\bin"
 }

    stages {
        stage('Build') {
            steps {
                bat 'python --version'
            }
        }
	stage('login') {
            steps {
                bat 'docker login'
		bat 'wagh9161'
		bat 'S@h1lwagh007'
            }
        }
        stage('Create Docker Image') {
            steps {
                bat 'docker build -t my-python-app .'
            }
        }
        stage('Publish Docker Image') {
            steps {
                bat 'docker tag my-python-app wagh9161/assignment:latest'
                bat 'docker push wagh9161/assignment'
            }
        }
	stage('Test') {
            steps {
                bat 'docker run wagh9161/assignment'
                
            }
        }
    }
}
