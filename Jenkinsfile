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
        stage('Create Tomcat Docker Image')
        {
            steps{
                script {
                    sh """ssh root@192.168.1.8 << EOF
                    docker build https://github.com/saba231097/DemoMavenProject.git#main -t tomcatsamplewebapp:${env.BUILD_ID}
                    exit
                    EOF"""
                }
                //sh "ssh root@192.168.1.8 docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
                // docker build https://github.com/saba231097/DemoMavenProject.git#main -t tomcatsamplewebapp:${env.BUILD_ID}
            }
        }
    }
}