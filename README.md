# EKS Configuration

About:
------
  This Configuration is to Launch EKS CLuster.
 
How To Run:
-----------
  Clone this repo and run terraform module.
  
    git clone https://github.com/kiranpe/Terraform_AWS_EKS.git
    
    terrform init
    
    terraform apply -auto-approve
    
    To Get kubeconfig:
    aws eks --region us-east-2 update-kubeconfig --name eks-cluster --> Downloads kubeconfig 
    
    Use [--profile=<your profile in ~/.aws/credentials>] if you set up the aws credentials using profiles.
    
    To Destroy Resources:
    terraform destroy -auto-approve
 
 How To setup GUI:
 ----------------
 
   Install yaml from Loacal
   
       kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.5/aio/deploy/recommended.yaml

   Install Servie Account using eks-admin-service-account.yaml. File is in Git Repo
   
       kubectl apply -f eks-admin-service-account.yaml
       
   Start Kubectl Proxy
   
       kubectl proxy
       
   To Get Token
   
       kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
    
   Open below Url and Use Token generated in the above command to Login
   
       http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#!/login
       
