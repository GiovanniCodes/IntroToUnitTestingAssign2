pipeline {
    agent {docker {image 'python:3.7.2' } }

    stages {
        stage('Build') {
            steps {
                withEnv(["HOME=${env.WORKSPACE}"]){
                sh 'pip install --user -r req.txt'
                sh 'python assignment_2_test_doubles.py'
                
                }  
              
                
                echo 'Hello testing world'
            }
        }
        stage('Test 1') {
            steps { 
            
               
               
            }
        }
        
        stage('Test 2') {
           steps {
               sh 'python flask_unit_test.py'
           }
       }
    }
}
