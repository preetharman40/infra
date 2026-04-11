output "marketing_ip" {
  description = "The IP address from the marketing module"
  # This is the 'tunnel' part:
  value       = module.marketing_server.instance_ip 
}