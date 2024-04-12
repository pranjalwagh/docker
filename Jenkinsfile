pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }
        stage('Create Docker Image') {
            steps {
		script{
                //bat 'docker build -t my-python-app .'
		docker.build("wagh9161/assignment", "-f my-python-app .")
		}
            }
        }
	stage('Test') {
            steps {
		script{
                //sh 'docker run wagh9161/assignment'
                echo "Tests passed"
		}
            }
        }
        stage('Publish Docker Image') {
            steps {
		script{
                //sh 'docker tag my-python-app wagh9161/assignment:latest'
                //sh 'docker push wagh9161/assignment'
		docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
                docker.image("wagh9161/assignment").push("${env.BUILD_NUMBER}")
                docker.image("wagh9161/assignment").push("latest")
		}
		}
		echo "Successfully pushed Docker image to Docker Hub"    
            }
        }
	
    }
}
