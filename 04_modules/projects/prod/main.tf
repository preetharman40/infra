# 1. The "Vault" configuration (Mandatory in Root)
terraform {
  backend "s3" {
    bucket         = "terraform-state-cyber"
    key            = "prod/terraform.tfstate" 
    region         = "us-west-1"
    dynamodb_table = "terraform-state-locking"
  }
}

# 2. The "Cloud Connection" (Mandatory in Root)
provider "aws" {
  region = "us-west-1"
}

# 3. The "Lego Brick" (Calling the Module)

module "${terraform.workspace}_server" {
  source        = "../../modules/web_server"
  server_name   = "Phoenix-App-${terraform.workspace}"
  instance_type = "t3.micro"
  ami_id        = "ami-0507f5acd9ba8e6b7"

}



