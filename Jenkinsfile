pipeline {
    agent any

    environment {
	version = "0"
	PORT = "5000"
    }
    stages {
        stage('build and run container') {
            steps {
                sh 'bash < build.sh'
            }
        }
    }
}
