pipeline {
    agent any

    environment {
	old_version = "1"
	version = "2"
	PORT = "9000"
<<<<<<< HEAD
    }
stages {
	stage('build') {
		steps {
			sh 'sudo chmod +x build.sh scripts/*.sh'
			sh './build.sh
		}
	}
    stages {
        stage('run unit tests') {
            steps {
                sh '''
                python3 -m venv venv
		sudo chmod +x venv/bin/activate
		./venv/bin/activate
		pip3 install -r requirements.txt
		python3 lbg.test.py
		'''
            }
=======
	}
	stages {
	stage('build') {
		steps {
			sh 'sudo chmod +x build.sh'
			sh './build.sh'
		}
	}
        stage('run unit tests') {
            	steps {
                	sh '''
                	python3 -m venv venv
			sudo chmod +x venv/bin/activate
			./venv/bin/activate
			pip3 install -r requirements.txt
			python3 lbg.test.py
			'''
            	}
>>>>>>> d3ff5694143f89a146bd0ea486ef847d684b2c5c
        }
	stage('push image') {
		steps {
			sh 'docker push eu.gcr.io/lbg-mea-12/lbg-python:mo_v${version}'
		}
	}
<<<<<<< HEAD
    }
	post {
		always {
			sh './scripts/cleanup.sh'
			cleanWs
=======
	}
	post {
		always {
			sh './scripts/cleanup.sh'
			cleanWs()
>>>>>>> d3ff5694143f89a146bd0ea486ef847d684b2c5c
		}
	}
}

