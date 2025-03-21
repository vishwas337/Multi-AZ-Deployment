#################################### create an ALB

resource "aws_lb" "example" {
  name               = "example-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-0123456789abcdef0"] # Replace with your security group ID
  subnets            = ["subnet-0123456789abcdef0", "subnet-abcdef0123456789"] # Replace with your subnet IDs

  enable_deletion_protection = false
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.example.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "Default response"
      status_code  = "200"
    }
  }
}

resource "aws_lb_target_group" "example" {
  name     = "example-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-0123456789abcdef0" # Replace with your VPC ID

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200"
  }
}

resource "aws_lb_listener_rule" "example" {
  listener_arn = aws_lb_listener.http.arn
  priority     = 1

  conditions {
    field  = "path-pattern"
    values = ["/example*"]
  }

  actions {
    type             = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }
}




















