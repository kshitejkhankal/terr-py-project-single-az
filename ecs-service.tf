resource "aws_ecs_service" "ecs-project-ecs" {
  name            = "ecs-project-ecs"
  cluster         = aws_ecs_cluster.python-project-cluster.id
  task_definition = aws_ecs_task_definition.python-project.arn
  desired_count   = 1
  launch_type     = "EC2"




  # network_configuration {
  #   assign_public_ip = true
  #   subnets         = [aws_subnet.vpc_prod_subnet[1].id]
  #   security_groups = [aws_security_group.mini-project-sg.id]
  # }
  depends_on = [aws_autoscaling_group.ecs-project-asg]
}


