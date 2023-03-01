
# Deployment docker application in EKS with Jenkins and ECR


## Components
 - GitHub repository with project and Dockerfile
 - Jenkins Master Server with ports:8080 and ssh
 - 2 Jenkins agents with ports:50000 and ssh
 - ECR Repocitory
 - EKS cluster with NodeGroup

## Agent Installation

Dependencies for agents:java,docker,kubectl,awscli

```bash
  sudo apt update
  sudo apt install default-jre
  sudo apt update && sudo apt install docker.io -y 
  sudo apt install docker-compose
  sudo usermod -aG docker $USER
  newgrp docker
  sudo apt install awscli
```
Install kubectl 

Connect agents to master with ssh or cli
## EKS cluster installation
  [Create EKS with Role](https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html )

  Add Node Group with Role

  Roles for policie:

  -    AmazonEKSWorkerNodePolicy
  -  AmazonEKS_CNI_Policy
  -  AmazonEC2ContainerRegistryReadOnly 
 

  
## Pipeline stages
- Image build on agent1
- Image push to ECR repository on agent1
- EKS Deployment on agent2
  - Apply  deployment configuration file whch pull image from ECR
  - Apply service file configuration on agent


## Connect Jenkins master with Git project and Run Build

