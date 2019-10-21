pipeline {
    agent {docker {image 'python:3.7.2' } dockerfile true }

    stages {
        stage('Build') {
            steps {
               
            
                
                echo 'Hello testing world'
            }
        }
        stage('Test 1') {    
            def dockerHome = tool 'myDocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
            steps { 
                
               withEnv(["HOME=${env.WORKSPACE}"]){
                sh 'pip install --user -r req.txt'
                sh 'python Assignment2_test_doubles.py'
              
                }  
             
               echo 'swag'
               
            }
        }
       
        stage('Test 2') {
           steps {
                withEnv(["HOME=${env.WORKSPACE}"]){
                sh 'docker build -t mongodb'
                sh 'run -d mongodb'  
                sh 'pip install --user -r req.txt'
                sh 'python flask_unit_test.py'
               
                }  
               
           }
       }
    }
}
