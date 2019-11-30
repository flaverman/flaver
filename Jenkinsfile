pipeline {
    agent any
    options{
        timeout(time: 2, unit: 'MINUTES')
    }

    environment {
        ARTIFACT_ID = "suma:${env.BUILD_NUMBER}"
    }
    stages {
        stage("Build"){
            steps{
                script{
                    dockerImage = docker.build "${env.ARTIFACT_ID}"
                }
            }

        }
        stage('Run Test'){
            steps{
                sh "docker run ${env.ARTIFACT_ID} npm test"
            }
        }

        stage('Publish'){
            when {
                branch 'master'

            }
            steps {
                script{
                    docker.withRegistry("", "DockerHubCredentials"){
                        dockerImage.push()
                    }
                }
            }
        }
    }


}