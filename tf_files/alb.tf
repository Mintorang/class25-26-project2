resource "aws_lb" "app_lb" {
  name               = "mo-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb-sg.id]
  subnets            = module.vpc.public_subnets
}

resource "aws_lb_target_group" "tg_app_server" {
  name     = "tg-app-server"
  port     = 8000
  protocol = "HTTP"
  vpc_id   = module.vpc.vpc_id

}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg_app_server.arn
  }
}

resource "aws_lb_target_group_attachment" "app_server_attachment" {
  target_group_arn = aws_lb_target_group.tg_app_server.arn
  target_id        = aws_instance.app_server.id
  port             = 8000
}