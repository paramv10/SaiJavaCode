	pipeline {
		// agent { node "Slave1" } or agent any 
		agent any
		environment {
			// Install the Maven version configured as "maven3.8" and add it to the path.
			// tool { maven "maven3"
			// another way of using maven given below.
			
			PATH="/opt/maven3/bin:$PATH"
		}

		stages {
			stage('CheckOut Code') {
				steps {
					// Get some code from a GitHub repository
					git credentialsId: '70860dd4-6c55-45b4-a377-6107adaa15a7', url: 'git@github.com:paramv10/SaiJavaCode.git'
				}
			}
			stage('Build Code') {
				steps {
					// Run Maven on a Unix agent.
					sh "mvn -Dmaven.test.failure.ignore=true clean package"
					// To run Maven on a Windows agent, use
					// bat "mvn -Dmaven.test.failure.ignore=true clean package"
				}
				post {
					// If Maven was able to run the tests, even if some of the test
					// failed, record the test results and archive the war file.
					success {
						junit '**/target/surefire-reports/TEST-*.xml'
						archiveArtifacts 'webapp/target/*.war'
					}
				}
			}
		}
	}
