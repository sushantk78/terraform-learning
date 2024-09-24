# Resource-8: Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-037774efca2da0726"
  instance_type          = "t2.micro"
  key_name               = "DemoKeyPair"
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  user_data              = file("apache-install.sh")
}