pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "ls"
                dir('project/') {
                    sh "ls"
                    sh "sudo docker build -t project ."
    }
            }
        }
    }
}
