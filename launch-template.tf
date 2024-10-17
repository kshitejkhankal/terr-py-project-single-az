resource "aws_launch_template" "ecs-asg-template" {
  name          = "ecs-asg-template"
  image_id      = "ami-0e0e417dfa2028266"   # Amazon Linux 2 AMI
  instance_type = "t2.large"
  key_name      = "IAM"
  
   
  iam_instance_profile {
  name = aws_iam_instance_profile.ecs_instance_profile.name
  # arn = aws_iam_instance_profile.ecs_instance_profile.arn
  # arn = "arn:aws:iam::992382601924:instance-profile/ecsInstanceRole"
  
  }

  network_interfaces {
    
    security_groups = [aws_security_group.mini-project-sg.id]
    subnet_id = aws_subnet.vpc_prod_subnet[1].id
  }

  user_data = base64encode(<<-EOF
              #!/bin/bash
              sudo su
             amazon-linux-extras install ecs -y
              systemctl start ecs
             echo ECS_CLUSTER=python-project-cluster >> /etc/ecs/ecs.config
             systemctl start ecs
             systemctl start ecs
            EOF
  )

  tags = {
    Name = "ecs-asg-template"
  }
}