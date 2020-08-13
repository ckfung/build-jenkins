pipeline {
  environment {
    registry = "omegamix/jenkins-test"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning') {
      steps {
        echo 'clone the latest source'
        git 'https://github.com/ckfung/petclinic-jenkins.git'
      }
    }
    stage('Build') {
      steps{
        script {
            echo 'start building image'
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Test') {
      steps{
        script {
            echo 'start testing'
            // steps for testing
        }
      }
    }
    stage("Deploy") {
        steps{
            script {
                echo 'start deploying'
                docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                }
            }
        }
    }
    stage("Remove Image") {
        steps {
            sh "docker rmi $registry:$BUILD_NUMBER"
        }
    }
  }
}
