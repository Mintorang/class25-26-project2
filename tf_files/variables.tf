variable "azs" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]

}

variable "pubkey" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDBkoIVVelswLAQTq/tLvmsiy/S4T4U9AYaks7CHEN9/q3SMIZuLiHTB8XswoZLJKwlvOkMrjoQwN0d7qrBcRnweTNioDJzE474pNeW7GKbCUApxsR9fHEkmxTcuzRjJq/vWhVB9nAtmRwTKSeo9eyFpjNsoizp0V2WpOCN3Jci14D+JRikfsZ+ynfep9oTjnSl2dTNrmknopE6PxrpFWJnrM7yp+JPfsXX6Aj6CqR9cJ0kT2x5MgZ6t2OfDN3bPTWJVC5xwQs8FiyP/moQeox9ni72yVMKgzx7U3X+Kw3zDwvbmZgQO/VGiCTD/7wnodqbbVsQIQehfPAWmq/2ZBe3b/GcOW149hhdVIPH/Wal95FMtFD7M8Y93/6n8BjsPErZbxXN0ZP5ROA/8nBS63lIpI9ElE2RhXjP7sTsvSJ/Oc3fJXilEYwoRdR8yjOittr39WLAwUh3wOHb1fQlLF4M6gMfmjbgRaWhPAfIEvZYGJslCDNg9qs35rV95ikMEHqCyU6ecke/qwLXPzzE1ng0NwxK0rq4xb/FM03Fko5IaSfmplQ7lOJCeEydLIR7dfT+KoIyh0Rkn3S7eEIkYPohEJj91s3hWF3QCvGZHoqbm3PfAKpGK3he8KaRBP8fQ7W1Mt7FswLfqbS2gXjznx/GACt9cPbm/zE9nafZ2j6cdQ== codespace@codespaces-a52f34"
}

variable "db_password" {
  type      = string
  default   = "lion12342023"
  sensitive = true

}

variable "db_username" {
  type    = string
  default = "moyo"

}

variable "db_engine" {
  type    = string
  default = "postgres"

}

variable "ab-zone" {
  type    = string
  default = "us-east-1a"

}