pipeline {
    agent {docker {image 'python:3.7.2' } }

    stages {
        stage('Build') {
            steps {
               
                sh """
                virtualenv venv --distribute
                    . venv/bin/activate 
                    pip install -r req.txt
                    python Assignment2_test_doubles.py
                """
                echo 'Hello testing world'
            }
        }
        stage('Test 1') {
            steps { 
           
                sh 'python Assignment2_test_doubles.py'
               
            }
        }
        
        stage('Test 2') {
           steps {
               sh 'python flask_unit_test.py'
           }
       }
    }
}
