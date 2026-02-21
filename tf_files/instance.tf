resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t3.micro"
  key_name               = "mo-key"
  vpc_security_group_ids = [aws_security_group.app-sg.id]
  availability_zone      = "us-east-1a"
  subnet_id              = module.vpc.private_subnets[0]





  tags = {
    Name = "app_server"
  }

  user_data = <<-EOF
              #!/bin/bash
              # 1. Install uv
              curl -LsSf https://astral.sh/uv/install.sh | sh
              
              # 2. Setup App
              cd /home/ubuntu
              git clone https://github.com/techbleat/class25-26-project2.git
              cd class25-26-project2

              # 3. Create env and install using absolute path for uv
              /root/.local/bin/uv venv 
              source .venv/bin/activate
              /root/.local/bin/uv pip install -r requirements.txt

              # 4. Start app in background and log output
              nohup uvicorn app.main:app --host 0.0.0.0 --port 8000 > /home/ubuntu/app.log 2>&1 &
              EOF
}