pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'pipelfgfg6ine'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Spring Boot application source code from your version control system (e.g., Git)
                git branch: 'main', url: 'https://github.com/ahmedmohsen08/jenkins-pipeline-test.git'
            }
        }
        
        stage('Build and Package') {
            steps {
                // Build your Spring Boot application using Maven
                sh 'mvn clean package'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build Docker image from Dockerfile
                script {
                    docker.build()
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Run Docker container with the built Spring Boot application
                script {
                    docker.image(DOCKER_IMAGE).withRun('-p 8080:8080') {
                        // Here you can add any additional configurations you need
                        // This example assumes your Spring Boot app listens on port 8080
                    }
                }
            }
        }
    }
}
