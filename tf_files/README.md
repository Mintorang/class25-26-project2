### Terraform ENV for the capstone project.

## What I have Built

# Public Subnet
- Application Load Balancer
- Bastion Host reachable by SSH

# Private Subnet
- Running Application Service 
- A postgres database

- Working security groups allowing access from and to specific groups

## PreReqs

- terraform installed
- awscli installed with configured keys
- requirements.txt installed

## To run this application first run 

  ``
  terraform init
  ``
## Then run:
  ``
  terraform apply
  ``

# After this the env will ouput the url of the ec2 to view the app.
