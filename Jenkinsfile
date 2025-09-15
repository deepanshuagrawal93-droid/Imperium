pipeline {
    agent any

    environment {
        VENV_DIR = ".venv"
        PYTHON = "${WORKSPACE}\\${VENV_DIR}\\Scripts\\python.exe"
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/deepanshuagrawal93-droid/Imperium.git', branch: 'main'
            }
        }

        stage('Setup VirtualEnv') {
            steps {
                bat """
                    if not exist ${VENV_DIR} (
                        python -m venv ${VENV_DIR}
                    )
                """
            }
        }

        stage('Install Dependencies') {
            steps {
                bat """
                    ${PYTHON} -m pip install --upgrade pip
                    ${PYTHON} -m pip install -r requirements.txt
                """
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat """
                    ${PYTHON} -m robot TestAutomation/
                """
            }
        }

        stage('Publish Reports') {
            steps {
                publishHTML([
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: 'TestAutomation/report',
                    reportFiles: 'report.html',
                    reportName: 'Robot Framework Report'
                ])
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'TestAutomation/output.xml,TestAutomation/report.html,TestAutomation/log.html', allowEmptyArchive: true
        }
    }
}
