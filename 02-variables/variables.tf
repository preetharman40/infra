variable "server_name" {
  description = "The name of our server"
  type        = string
  default     = "My-Flexible-Server"
}

variable "instance_type" {
  description = "The size of the server"
  type        = string
  default     = "t3.micro"
}

variable "db_password" {
  description = "The secret password for our database"
  type        = string
  sensitive   = true # This tells Terraform to hide the value in the logs!
}
}
