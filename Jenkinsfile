[08/12 19:11] Shaankari Voruganti
pipeline {​​​​​

    agent any
 
   stages {​​​​​

       stage('checkout'){​​​​​

      steps{​​​​​

        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: '']])

      }​​​​​

    }​​​​​
 

        stage('Terraform Init') {​​​​​

            steps {​​​​​

                script {​​​​​

                    sh 'terraform init'

                }​​​​​

            }​​​​​

        }​​​​​

         stage('Terraform validate') {​​​​​

            steps {​​​​​

                script {​​​​​

                    sh 'terraform validate'

                }​​​​​

            }​​​​​

        }​​​​​


         stage('Terraform plan') {​​​​​

            steps {​​​​​

                script {​​​​​

                    sh 'terraform plan'

                }​​​​​

            }​​​​​

        }​​​​​

        stage('Terraform Apply') {​​​​​

            steps {​​​​​

                script {​​​​​

                    sh 'terraform apply -auto-approve'

                }​​​​​

            }​​​​​

        }​​​​​

 
    }​​​​​

}​​​​​
