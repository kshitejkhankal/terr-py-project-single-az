resource "aws_ecs_task_definition" "python-project" {
  family                   = "python-project"
  requires_compatibilities = ["EC2"]
  network_mode             = "none"
  cpu                      = 1024
  memory                   = 2048

  execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
  task_role_arn      = aws_iam_role.ecs_task_execution_role.arn

  container_definitions = <<TASK_DEFINITION
[
  {
    "name": "python-project-container",
    "image": "${aws_ecr_repository.python-project.repository_url}:19",
    "cpu": 256,
    "memory": 512,
    "essential": true
    }
 ]
TASK_DEFINITION

}


# "arn:aws:iam::992382601924:role/fusion-dev-frontend-role"
# "portMappings": [
#     {
#       "containerPort": 80,
#       "hostPort": 80




#     }
#   ]