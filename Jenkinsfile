pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/deepanshuagrawal93-droid/Imperium.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat """
                    C:\\Users\\Vedaarth\\PycharmProjects\\PythonProject\\.venv\\Scripts\\python.exe -m pip install -r requirements.txt
                """
            }
        }

        stage('Run Robot Tests') {
            steps {
                dir('TestAutomation') {
                    bat """
                        C:\\Users\\Vedaarth\\PycharmProjects\\PythonProject\\.venv\\Scripts\\python.exe -m robot --outputdir results .
                    """
                }
            }
        }

        stage('Publish Reports') {
            steps {
                publishRobotFrameworkReports(outputPath: 'TestAutomation/results')
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'TestAutomation/results/*.*', fingerprint: true
        }
    }
}
