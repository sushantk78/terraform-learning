# Resource block to create VPC in us-east-2
resource "aws_vpc" "vpc-us-east-2" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-us-east-2"
  }
}