#!groovy
pipeline {
  agent {
      docker {
          image 'maven:3-alpine'
          args '-v /root/.m2:/root/.m2'
      }
  }
   stages {     
    stage('Maven Install') {
      steps {
        sh 'mvn -B -DskipTests clean install'
      }
     }
     stage('Tests') {
        steps {
            sh 'mvn test'
        }
        post {
            always {
                junit 'target/surefire-reports/*.xml'
            }
        }
      }
     stage('Deliver') {
        steps {
            sh 'mvnw package'
            echo "Running ${env.BUILD_ID} on ${env.NODE_NAME}"
            input message: 'Voulez-vous continuer le build? (Cliquer sur "Aller" pour continuer)'
            sh './jenkins/scripts/kill.sh'
        }
      }
   }
 }
