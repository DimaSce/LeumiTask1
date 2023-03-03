pipeline {
    agent none
    stages {
        stage('build image') {
            agent { label 'agent1' }
            steps {
                dir('project/') {
                    sh "sudo docker build -t project ."
                    }
                }
            }       
        stage('Push image to ECR') {
            agent { label 'agent1' }
            steps {
                sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 022569946651.dkr.ecr.us-east-1.amazonaws.com"
                sh "sudo docker tag project:latest 022569946651.dkr.ecr.us-east-1.amazonaws.com/project:latest"
                sh "docker push 022569946651.dkr.ecr.us-east-1.amazonaws.com/project:latest"
            }
    }
        stage('Deploy on EKS') {
            agent { label 'agent2' }
            steps {
                dir('eks/') {
                    sh "/home/ubuntu/bin/kubectl apply -f  dep.yml"
                    sh "/home/ubuntu/bin/kubectl apply -f service.yml"
    }
            }
        }
    }
}
