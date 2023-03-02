pipeline {
    agent none
    stages {
        stage('build') {
            agent { label 'agent1' }
            steps {
                sh "ls"
                dir('project/') {
                    sh "ls"
                    sh "sudo docker build -t project ."
                    }
                }
            }       
        stage('Deploy') {
            agent { label 'agent1' }
            steps {
                sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 022569946651.dkr.ecr.us-east-1.amazonaws.com"
                sh "sudo docker tag project:latest 022569946651.dkr.ecr.us-east-1.amazonaws.com/project:latest"
                sh "docker push 022569946651.dkr.ecr.us-east-1.amazonaws.com/project:latest"
            }
    }
           stage('build2') {
            agent { label 'agent2' }
            steps {
                sh "ls"
                dir('project/') {
                    sh "ls"
                    sh "curl ifconfig.me"
                }   
             }
        }
    }
}
