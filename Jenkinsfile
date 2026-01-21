pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }

  stages {

    stage('Cloning Git') {
      steps {
        sh 'echo checking out source code'
      }
    }

    stage('SAST') {
      steps {
        sh 'echo SAST stage'
      }
    }

    stage('Build-and-Tag') {
      steps {
        sh 'echo Building and Tagging Docker Image'
        sh 'docker build -t myimage:latest .'
      }
    }

    stage('Post-to-dockerhub') {
      steps {
        sh 'echo Pushing to DockerHub repo'
        // example:
        // sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
        // sh 'docker push myimage:latest'
      }
    }

    stage('SECURITY-IMAGE-SCANNER') {
      steps {
        sh 'echo scanning Docker image for vulnerabilities'
        // example for Trivy:
        // sh 'trivy image myimage:latest'
      }
    }

    stage('Pull-image-server') {
      steps {
        sh 'echo pulling image on server'
        // example:
        // sh 'ssh user@server docker pull myimage:latest'
      }
    }

    stage('DAST') {
      steps {
        sh 'echo DAST scanning for runtime security'
      }
    }
  }
}
