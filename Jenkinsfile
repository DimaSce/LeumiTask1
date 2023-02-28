pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "ls"
                dir('project/') {
                    sh "ls"
                    sh "docker build -t project ."
    }
            }
        }
    }
}
