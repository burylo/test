pipeline {
  agent any

  environment {
    GITHUB_BRANCH = 'dev'
    MYSQL_HOST = 'db'
    CRED_ID = 'mysql_cred'
  }

  stages {
    stage('Test github connection') {
      steps {
        git(url: 'https://github.com/burylo/test.git', branch: "${GITHUB_BRANCH}")
      }
    }
    stage('Make mysql WP site dump'){
      steps {
        withCredentials([usernamePassword(credentialsId:"${CRED_ID}", passwordVariable: 'pass', usernameVariable: 'user')]){
          sh 'mysqldump -h ${MYSQL_HOST} -u ${user} -p${pass} wordpress > /home/wordpress/my_site.sql'
        }
      }
    }  
  }
}