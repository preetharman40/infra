

variable "database_API_KEY" {
  description = "The API key for our database"
  type        = string
  sensitive   = true # This tells Terraform to hide the value in the logs!
}