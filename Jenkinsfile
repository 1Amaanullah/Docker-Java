pipeline{
	agent any
	
	tools {
    maven 'M3'
  }
	
	stages{
		
		stage('Initialize'){
        steps {
                def dockerHome = tool 'myDocker'
                env.PATH = "${dockerHome}/bin:${env.PATH}"                }
        }
	
		stage("Docker & MVN Install"){
			
		agent {
        	docker {
		    	image 'maven:3.6.3-jdk-11'
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
