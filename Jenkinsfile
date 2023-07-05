pipeline {
	agent any

	stages {

		stage('Docker Build and Push') {
	      steps {
	        withDockerRegistry([credentialsId: "docker-hub", url: ""]) {
	          sh 'printenv'
	          sh 'docker build -t carmichaelc09/project1:v1 .'
	          sh 'docker push carmichaelc09/project1:v1'
	        }
	      }
	    }

	    stage('Kubernetes Deployment - DEV') {
	      steps {
	        withKubeConfig([credentialsId: 'kubeconfig']) {
	          sh "kubectl apply -f k8s_deployment_service.yaml"
	        }
	      }
	    }


	}

}
