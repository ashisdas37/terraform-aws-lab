terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "devops_lab" {
  bucket_prefix = "devops-learning-"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }

}