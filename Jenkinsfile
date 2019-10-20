pipeline {
    agent {docker {image 'python:3.7.2' } }

    stages {
        stage('Build') {
            steps {
               
                echo 'Hello testing world'
            }
        }
        stage('Test 1') {
            steps { 
                sh 'pip -m install pymongo'
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
