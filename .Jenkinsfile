pipeline {
    agent any

    environment {
        IMAGE_NAME = "Jobportal-demo-image"
        CONTAINER_NAME = "Jobportal-demo-container"
    }

    stages {
        stage('Get Code from GitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/bhargavikolavennu1-pixel/my-practice.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm -f $CONTAINER_NAME || true'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d --name $CONTAINER_NAME -p 1112:80 $IMAGE_NAME'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully! Visit http://18.209.8.139:1112'
        }
        failure {
            echo 'Pipeline failed. Check console output for details.'
        }
    }
}

