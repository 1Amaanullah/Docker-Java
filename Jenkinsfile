pipeline{

	agent any
	
	stages{
	
		stage("Docker & MVN Install"){
		
				agent {
					docker {
						image 'maven:3.6.3-jdk-11'
						}
					}
				steps{
					sh'mvn -DskipTests clean install'
				}
			}
				
		
			
			stage("Deploy"){
		
			steps{
					echo 'Deploying app'
				}
		
			}
	
		}

	}