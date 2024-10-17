#!/bin/bash
 sudo su
amazon-linux-extras install ecs -y
systemctl start ecs
echo ECS_CLUSTER=python-project-cluster >> /etc/ecs/ecs.config
systemctl start ecs
systemctl start ecs
