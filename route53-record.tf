
resource "aws_route53_record" "www" {
  zone_id = "Z0534466PZH9OPTCRBP8"
  name    = "www.krmkhub.in"
  type    = "A"
  ttl     = 300
  records = [aws_instance.nginx-server.public_ip]
}
