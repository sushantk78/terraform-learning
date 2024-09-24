# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    prevent_destroy = false
  }
}