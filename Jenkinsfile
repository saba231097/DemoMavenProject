pipeline{
    agent any
    stages{
        stage('Build Application'){
            steps{
                sh 'mvn -f pom.xml clean package'
            }
            post{
                success{
                    echo "Now Archiving the artifacts"
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Deploy to Staging Env'){
            steps{
                build job: 'Deploy_to_Staging'
            }
        }
        stage('Deploy to PRD Env'){
            steps{
                timeout(time: 5, unit: 'Days'){
                    input message: 'Approve PROD Deployment?'
                }
                build job: 'Deploy_to_PROD'
            }
        }
    }
}