pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        git(url: 'https://github.com/burylo/test.git', branch: 'dev')
      }
    }

  }
}