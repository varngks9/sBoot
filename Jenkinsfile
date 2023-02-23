pipeline {
	agent any
	
	stages {
		stage('Build') {
			steps {
				sh 'mvn -B -DskipTests clean install'
			}
		}
		stage('Test') {
			steps {
				sh 'mvn test'
			}
			post {
				always {
					junit 'target/surefire-reports/*.xml'
				}
			}
		}
		stage('Run') {
			steps {
				sh './scripts/deliver.sh'
			}
		}
		
	}
}
