pipeline{

	agent any
	
	tools {
    maven 'M3'
  }
	
	stages{
	
		stage("Docker & MVN Install"){
		
				
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
