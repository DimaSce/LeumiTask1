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
                script{
                        docker.withRegistry('https://022569946651.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-credentials' {
                    
                    docker.image("project").push("latest")
                    }
                }
            }
    }
}
}
