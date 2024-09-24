# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web"
    #"Name" = "web-${count.index}"
  }
}