output "app_url" {
  description = "URL for APP"
  value       = "http://${aws_lb.app_lb.dns_name}"

}

output "bastion_ip" {
  description = "IP for bastion"
  value       = aws_instance.bastion.public_ip
}

output "appserver_ip" {
  description = "IP for app"
  value       = aws_instance.bastion.private_ip
}