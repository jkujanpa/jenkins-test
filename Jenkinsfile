pipeline {
agent {
    docker {
        image 'centos:7'
        label 'my-defined-label'
        //args  '-v /tmp:/tmp'
    }
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
