# 1. Tell Terraform we want to use AWS
provider "aws" {
  region = "us-west-1" 
}

# 2. Tell Terraform to create a server (EC2 instance)
resource "aws_instance" "my_first_server" {
  ami           = "ami-0507f5acd9ba8e6b7" # This is like picking the "Windows" or "Linux" version
  instance_type = "t3.micro"              # This is the size (t2.micro is the 'free' small one)

  tags = {
    Name = "HelloWorld-Server"
  }
}
