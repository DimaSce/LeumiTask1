pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "ls"
                dir('project/') {
                    sh "ls"
                    script{
                 app = docker.build("project")
                }
    }
            }
        }
        
                stage('Deploy') {
            steps {
                script{
                        docker.withRegistry('https://022569946651.dkr.ecr.us-east-1.amazonaws.com/project', 'ecr:us-east-2:aws-credentials') {
                    
                    app.push("latest")
                    }
                }
            }
    }
}
