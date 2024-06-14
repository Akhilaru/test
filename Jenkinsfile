pipeline{
    agent any
    stages{
        stage("fetching code"){
            steps{
                git "https://github.com/Akhilaru/test.git"
                echo "code fetched"
            }
        }
        stage("docker build"){
            steps{
                script{
                    docker.build('flask_app:latest', '-f ./Dockerfile .')
                    echo "docker build completed"
                    sh "docker images"
                }
            }
        }
    }
    post{
        always{
            echo "====++++always++++===="
        }
        success{
            echo "====++++only when successful++++===="
            build job: 'test'
        }
        failure{
            echo "====++++only when failed++++===="
        }
    }
}