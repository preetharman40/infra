output "instance_ip" {
  description = "The public IP address of the web server"
  value       = aws_instance.server.public_ip
}

output "server_id" {
  description = "The ID assigned by AWS"
  value       = aws_instance.server.id
}
