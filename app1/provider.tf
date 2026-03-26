# 1. Define the required provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Allows minor updates but prevents breaking major changes
    }
  }
}

# 2. Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}