pipeline {
	agent any

	stages {
		#stage('Build Artifact') {
		#	steps{
		#		sh "mvn clean package "
		#		archive 'target/*.war'
		#	}

		#}	
		#stage('Unit Tests') {
		#	steps{
		#		sh "mvn test"
		#	}

		#}

		stage('Docker Build and Push') {
	      steps {
	        withDockerRegistry([credentialsId: "docker-hub", url: ""]) {
	          sh 'printenv'
	          sh 'docker build -t carmichaelc09/AnimalPhoto:v1 .'
	          sh 'docker push carmichaelc09/AnimalPhoto:v1'
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