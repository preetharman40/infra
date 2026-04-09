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
