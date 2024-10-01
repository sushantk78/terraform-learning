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

# Provider Block
provider "aws" {
  region = "us-east-2"
  profile = "sushant"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami = "ami-037774efca2da0726"
  instance_type = "t2.micro"
}