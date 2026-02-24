## Terraform ENV for the capstone project.

# What I have Built

#Public Subnet
- Application Load Balancer
- Bastion Host reachable by SSH

# Private Subnet
- Running Application Service 
- A postgres database

- Working security groups allowing access from and to specific groups

## To run this application first run 

``bash
terraform init
terraform apply
``