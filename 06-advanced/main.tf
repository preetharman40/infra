# 1. Tell Terraform we want to use AWS
provider "aws" {
  region = "us-west-1" 
}

resource "aws_instance" "provisioner_test" {
  ami           = "ami-0507f5acd9ba8e6b7" # Use your region's AMI
  instance_type = "t3.micro"

  # The Provisioner:
  provisioner "local-exec" {
    command = "echo 'Server created with IP: ${self.public_ip}' > server_details.txt"
  }
}

/*
resource "aws_security_group" "protected_sg" {
  name        = "protected-firewall"
  description = "A firewall that cannot be deleted easily"

  lifecycle {
    prevent_destroy = true
  }
}
*/

