output "app_url" {
  description = "URL for APP"
  value       = "http://${aws_instance.app_server.public_dns}:8000"

}