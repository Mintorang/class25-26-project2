resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t3.micro"
  key_name               = "mo-key"
  vpc_security_group_ids = [aws_security_group.test.id]
  availability_zone      = "us-east-1a"
  subnet_id              = module.vpc.private_subnets[0]


  tags = {
    Name = "test"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y python3-pip git

              # Clone your repository (Replace with your URL)
              git clone https://github.com/Mintorang/class25-26-project2 /home/ubuntu/app
              cd /home/ubuntu/app

              # Install dependencies
              pip3 install -r requirements.txt

              # Run the app in the background
              # Use 0.0.0.0 so it's accessible outside the instance
              nohup uvicorn main:app --host 0.0.0.0 --port 8000 &
              EOF


}