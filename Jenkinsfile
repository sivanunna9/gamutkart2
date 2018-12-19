pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
				checkout scm			        }
		    }
		stage('Build') {
	        steps {
//				sh '${MAVEN_HOME}/bin/mvn install'
				sh '/home/sai/distros/apache-maven-3.6.0/bin/mvn install'
	        }
		}
	}
}
