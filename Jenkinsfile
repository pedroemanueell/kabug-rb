pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building or Resolve Dependencies!'
                sh 'bundle install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running regression tests'    
            }
        }
        stage('UAT') {
            steps{
                echo 'Wait for User Acceptance'
                input(messege: 'Go to production?', ok: 'Ýes')
            }
        }
        stage('Prod') {
            steps {
                echo 'WebApp is Ready :)'
            }
        }
    }
}