pipeline {
    agent any
    environment {
        ENV="Google.com"
    }
    parameters {
         string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
    }
    stages {
        stage("Hello 1") {
            steps {
                sh "echo Hello World 1"
            }
        }
        stage("Hello 2") {
            steps {
                sh "echo Hello world 2"
            }

        }
        stage("Hello 3") {
            steps {
                sh "echo Hello world 3"
            }
        }

    }
    
}