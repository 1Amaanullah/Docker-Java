pipeline{
	agent any
	
	tools {
    maven 'M3'
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'docker'

  }
	
	stages{
	  
	  stage("Command Of Ubunti"){
	    	steps{
		  	sh ''' sudo chmod 666 /var/run/docker.sock '''
		}
	  }
		
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
