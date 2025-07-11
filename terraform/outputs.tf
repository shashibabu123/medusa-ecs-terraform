output "load_balancer_dns" {
  value = aws_lb.ecs.dns_name
}

