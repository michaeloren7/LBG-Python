pipeline {
	agent any

	environment {
		old_version = "1"
		version = "2"
		PORT = "9000"
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
        	}
		stage('push image') {
			steps {
				sh 'docker push eu.gcr.io/lbg-mea-12/lbg-python:mo_v${version}'
			}
		}
		stage('deploy to cluster') {
			steps {
				sh 'kubectl apply -f kube_deployment.yaml'
			}
		}
	}
	post {
		always {
			#sh 'cleanup.sh'
			#cleanWs()
		}
	}
}
