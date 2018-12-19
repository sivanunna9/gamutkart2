ipipeline {
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
                  ('Deploy') {
                steps {
//                              sh '${MAVEN_HOME}/bin/'
                                sh 'sshpass -p "123" scp target/gamutkart.war satya@172.17.0.2:/home/satya/distros/apache-tomcat-8.5.35/webapps'
                }
                }

	}
}
