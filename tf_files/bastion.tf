resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.amiID.id
  instance_type               = "t3.micro"
  key_name                    = "mo-key"
  vpc_security_group_ids      = [aws_security_group.bastion-sg.id]
  availability_zone           = "us-east-1a"
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Name = "bastion host"
  }

}