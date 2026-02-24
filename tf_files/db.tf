resource "aws_db_instance" "postgres_db" {
  allocated_storage      = 20
  db_name                = var.db_username 
  engine                 = var.db_engine
  instance_class         = "db.t4g.micro"
  username               = var.db_username
  password               = var.db_password
  storage_type           = "gp3"
  publicly_accessible    = false
  vpc_security_group_ids = [aws_security_group.db-sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnets.name
}

resource "aws_db_subnet_group" "db_subnets" {
  name       = "db-subnets"
  subnet_ids = module.vpc.private_subnets
}