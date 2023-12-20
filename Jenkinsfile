pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform validate') {
            steps {
                script {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        /*stage('Terraform Destroy') {
            steps {
                script {
                    sh 'terraform destroy -auto-approve'
                }
            }
        } */  
    }
}
