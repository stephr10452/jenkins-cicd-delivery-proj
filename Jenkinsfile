pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')
        IMAGE_NAME = "steph10452/stephanie-reyes-app"
        IMAGE_TAG = "latest"
    }

    stages {

        stage('Stephanie.Reyes - Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }

        stage('Stephanie.Reyes - Login to Dockerhub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Stephanie.Reyes - Push image to Dockerhub') {
            steps {
                sh 'docker push $IMAGE_NAME:$IMAGE_TAG'
            }
        }
    }

    post {
        always {
            sh 'docker logout || true'
        }
    }
}
