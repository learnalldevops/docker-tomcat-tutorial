pipeline {

  environment {
    registry = "iimohii/mytomscats"
    registryCredential = 'DockerHub'
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/learnalldevops/docker-tomcat-tutorial.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build("iimohii/mytomscats")
        }
      }
    }

    stage('Push Image') {
      steps{
        script {
                           withDockerRegistry([ credentialsId: "DockerHub", url: "" ]) {
                           sh 'docker push iimohii/mytomscats:latest'

          }
        }
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "myweb.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
