pipeline{
  agent any
  parameters{
    choice(name: 'VERSION', choices: ['1.1.0', '1', '2'], description:'')
  }
  tools{
      maven 'Maven'
  }
  environment {
      NEW_VERSION= '1.3.0'
      SERVER_CREDENTIALS = credentials('server-creds')
  }
  stages{
    stage("build"){
      steps{
        echo "Inside build stage, executing steps"
        echo "Building version ${NEW_VERSION}"
      }
    }

    stage("test"){
      when {
           expression {
                 BRANCH_NAME == 'CICDPractice_branch_Jenkinsfile'
           }
      }
      steps{
        echo "Executed when condition.Inside test stage, executing steps"
      }
    }

    stage("deploy"){
      steps{
        echo "Inside deploy stage, executing steps"
        echo "Deploying with ${SERVER_CREDENTIALS}"
      }
    }
  }
}
      
