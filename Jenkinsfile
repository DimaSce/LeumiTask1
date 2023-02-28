pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "ls"
                dir('project/') {
                    sh "ls"
    }
            }
        }
        
                stage('Deploy') {
            steps {
            sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 022569946651.dkr.ecr.us-east-1.amazonaws.com"
            sh "sudo docker build -t project ."
            sh "sudo docker tag project:latest 022569946651.dkr.ecr.us-east-1.amazonaws.com/project:latest"
            sh "docker push 022569946651.dkr.ecr.us-east-1.amazonaws.com/project:latest"
    }
    }
}
}
