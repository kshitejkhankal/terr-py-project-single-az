resource "aws_autoscaling_group" "ecs-project-asg" {
  desired_capacity = 1
  max_size         = 2
  min_size         = 1


  vpc_zone_identifier = [aws_subnet.vpc_prod_subnet[1].id] # Replace with your subnet IDs


  launch_template {
    id      = aws_launch_template.ecs-asg-template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "ecs-project-asg"
    propagate_at_launch = true
  }
}
