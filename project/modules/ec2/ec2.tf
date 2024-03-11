resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.public_subnet_ec2
  
}


