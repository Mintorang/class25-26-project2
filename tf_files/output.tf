output "app_url" {
  description = "AppURL"
  value       = "http://${aws_lb.app_lb.dns_name}"

}

output "bastion_ip" {
  description = "BsationIP"
  value       = aws_instance.bastion.public_ip
}

output "appserver_ip" {
  description = "AppIP"
  value       = aws_instance.bastion.private_ip
}
