resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t3.micro"
  key_name               = "mo-key"
  vpc_security_group_ids = [aws_security_group.app-sg.id]
  availability_zone      = var.ab-zone
  subnet_id              = module.vpc.private_subnets[0]





  tags = {
    Name = "app_server"
  }

  user_data = <<-EOF
              #!/bin/bash
              
              curl -LsSf https://astral.sh/uv/install.sh | sh
              
              cd /home/ubuntu
              git clone https://github.com/techbleat/class25-26-project2.git
              cd class25-26-project2

             
              uv venv 
              source .venv/bin/activate
              uv pip install -r requirements.txt


              nohup uvicorn app.main:app --host 0.0.0.0 --port 8000 > /home/ubuntu/app.log 2>&1 &
              EOF
}