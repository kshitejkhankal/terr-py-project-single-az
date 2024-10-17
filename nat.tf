resource "aws_nat_gateway" "python-project-nat" {
  allocation_id     = aws_eip.nat_gateway_eip.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.vpc_prod_subnet[0].id

  tags = {
    Name = "gw NAT"
  }
}
resource "aws_eip" "nat_gateway_eip" {
  domain = "vpc"

}








