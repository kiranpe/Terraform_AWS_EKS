# EKS Configuration

About:
------
  This Configuration is to Launch EKS CLuster.
 
How To Run:
-----------
  Clone this repo and run terraform module.
  
    git clone
    
    terrform init
    
    terraform apply -auto-approve
    
    To Get kubeconfig:
    aws eks --region us-east-2 update-kubeconfig --name eks-cluster --profile=devops
    
    To Destroy Resources:
    terraform destroy -auto-approve
