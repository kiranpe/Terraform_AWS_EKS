variable "aws_cred" {
  type        = string
  default     = "devops"
  description = "AWS Login Credentials Profile"
}

variable "aws_region" {
  type        = string
  default     = "us-east-2"
  description = "Launch your K8s in define region"
}

variable "iam_role_name" {
  type        = string
  default     = "eks-main"
  description = "EKS IAM Role Name"
}

variable "demo-node-name" {
  type        = string
  default     = "eks-node"
  description = "EKS Node Role Name"
}

variable "cluster-name" {
  type        = string
  default     = "eks-cluster"
  description = "EKS Cluster Name"
}
