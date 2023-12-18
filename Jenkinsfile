pipeline {​​​​​

    agent any
 
   stages {​​​​​

       stage('checkout'){​​​​​

      steps{​​​​​

        checkout scmGit(branches: [[name: '*/test']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/amrutha777/Use-Case-1.git']])

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
