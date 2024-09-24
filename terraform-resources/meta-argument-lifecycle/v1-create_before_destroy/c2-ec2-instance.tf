# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-037774efca2da0726"
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  #availability_zone = "us-east-2b"
  tags = {
    "Name" = "web-1"
  }
    lifecycle {
      create_before_destroy = true
    }
}