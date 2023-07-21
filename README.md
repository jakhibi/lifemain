# K8 Helm Test

This is a Micro-service based application that will:

- Setup an EKS Cluster on AWS
- Build a Python Docker Image
- Deploy image to the EKS Cluster using a Helm Chart

## Setup an EKS Cluster on AWS

Terraform is used to Setup the Kubernetes Cluster, on AWS. It will first setup the network sytem, the VPC, NAT, Subnets and all the system requires to run the Kubernetes cluster and applications within the infrastructure.

The terraform code is located in the `eks-infra` directory. The workflow to deploy this is to use 

<code>
terraform init
terraform apply -auto-approve 
</code>

## Build a Python Docker Image

The `app/` directory contain the python application with flask module to server as the webserver. It also contains the `Dockerfile` which is used to build the Docker image. The Docker image is built based on the configurations of the Dockerfile. It uses a python:apline based image for optimal image that is small enough and has all the necessary pre-requisite for the application to run.

## Deploy image to the EKS Cluster using a Helm Chart
The application is deployed using Github actions. the `.github/workflows/app-deploy.yml` is the directory where the pipeline configuration is done. the pipeline has the following steps/actions

- Checkout code
- Setup Docker
- Authenticate with Docker Registry
- Build the Docker image and push to Docker registry (using a unique tag)
- Configure AWS credentials for authorization and authentication
- Install Helm Binary
- Authorize for Kubernetes and deploy via the helm chart in `app/k8s/appchart`

(c) 2023 Ewere