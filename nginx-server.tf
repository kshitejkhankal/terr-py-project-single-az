resource "aws_instance" "nginx-server" {

  ami                         = "ami-0522ab6e1ddcc7055"
  instance_type               = "t2.micro"
  key_name                    = "IAM"
  security_groups             = [aws_security_group.mini-project-sg.id]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.vpc_prod_subnet[0].id
  user_data                   = file("./install.sh")
  tags = {
    Name = "nginx-server-for-project-reverse-proxy"
  }
  lifecycle {
    ignore_changes = all
  }

}