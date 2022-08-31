pipeline{
	agent any
	
	tools {
    maven 'M3'

  }
	
	stages{
		
		stage("Docker & MVN Install"){
			
		agent {
        	docker {
		    	image 'maven:3.6.3'
				reuseNode true
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
