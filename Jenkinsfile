pipeline {
  agent any

  environment {
    GITHUB_BRANCH = 'dev'
  }

  stages {
    stage('Test github connection') {
      steps {
        git(url: 'https://github.com/burylo/test.git', branch: "${GITHUB_BRANCH}")
      }
    }
  }
}