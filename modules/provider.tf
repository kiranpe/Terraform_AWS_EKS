terraform {
  required_version = ">=1.0.0"

  required_providers {
    aws = {
      version = "~>3.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = var.aws_cred
  region  = var.aws_region
}
