variable "instance_type" {
  description = "The size of the server"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "The ami id of the server"
  type        = string
  default     = "ami-0507f5acd9ba8e6b7"

}

variable "server_name" {
  description = "The name of our server"
  type        = string
  default     = "terraform-server"
}

variable "database_API_KEY" {
  description = "The API key for our database"
  type        = string
  sensitive   = true # This tells Terraform to hide the value in the logs!
}