pipeline {
    agent any
    stages {
        stage('One') {
            when {
                branch 'master'
            }
            steps {
                echo '=== Building Petclinic Docker Image ==='
                
                //script {
                //    app = docker.build("getintodevops/hellonode")
                //}
            }
        }
        stage('Two') {
            steps {
                echo '=== Pushing Petclinic Docker Image ==='
               
            }
        }
        stage('Three') {
            steps {
                echo '=== Delete the local docker images ==='
            }
        }
    }
}
