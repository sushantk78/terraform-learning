# Resource block to create VPC in us-west-2
resource "aws_vpc" "vpc-us-west-2" {
  cidr_block = "10.0.0.0/16"
  provider = aws.sushant-west-2
  tags = {
    "Name" = "vpc-us-west-2"
  }
}