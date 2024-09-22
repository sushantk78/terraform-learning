# Terraform Block
terraform {
  required_version = "~> 1.9"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# Provider-1 for us-east-2
provider "aws" {
  profile = "sushant"
  region = "us-east-2"
}

# Provider-2 for us-west-2
provider "aws" {
  profile = "sushant"
  region = "us-west-2"
  alias = "sushant-west-2"
}