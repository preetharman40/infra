# 1. The "Vault" configuration (Mandatory in Root)
terraform {
  backend "s3" {
    bucket         = "terraform-state-cyber"
    key            = "marketing/terraform.tfstate" # Separate path for marketing!
    region         = "us-west-1"
    dynamodb_table = "terraform-state-locking"
  }
}

# 2. The "Cloud Connection" (Mandatory in Root)
provider "aws" {
  region = "us-west-1"
}

# 3. The "Lego Brick" (Calling the Module)

module "marketing_server" {
  source        = "../../modules/web_server"
  server_name   = "Marketing-Web-01"
  instance_type = "t3.micro"
  ami_id        = "ami-0507f5acd9ba8e6b7"
}
