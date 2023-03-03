## Overview
The project involves provisioning and deploying a docker application in EKS and utilizing ECR for image storage and management.

## Components
1) Create Jenkins server(port8080) and 2 agents(port 50000(optional)) EC2

install dependencies (default-jre, aws cli,docker,kubectl)

2) Create private ECR repository

3) Open GitHub repository and push project with docker file

4) Integrate Github project with Jenkins server

5) Create  [Create EKS with Role](https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html )

Create NodeGroupe and role with policies

    AmazonEKSWorkerNodePolicy
    AmazonEKS_CNI_Policy
    AmazonEC2ContainerRegistryReadOnly

## Agent Installation

Install java

```bash
  sudo apt update
  sudo apt install default-jre
  ```
Install docker
  ```
  sudo apt update && sudo apt install docker.io -y 
  sudo apt install docker-compose
  sudo usermod -aG docker $USER
  newgrp docker
 ```
 Install aws 
 ```
  sudo apt install awscli
```
Install kubectl 

Connect agents to master with ssh or cli


  
## Pipeline stages
- Image build on agent1
- Image push to ECR repository on agent1
- EKS Deployment on agent2
  - Apply  deployment configuration file whch pull image from ECR
  - Apply service file configuration on agent


## Connect Jenkins master with Git project and Run Build

