pipeline {
    agent any
    stages {
        stage('One') {
            when {
                branch 'master'
            }
            steps {
                echo '=== Building Petclinic Docker Image ==='
                //app = docker.build("getintodevops/hellonode")
                //script {
                //    app = docker.build("ibuchh/petclinic-spinnaker-jenkins")
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
