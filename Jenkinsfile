pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                sh 'echo "Hello World"'
            }
        }
        stage('List') {
            steps {
                sh '''
                    echo "List root folder"
                    ls -lah /
                '''
            }
        }
    }
}