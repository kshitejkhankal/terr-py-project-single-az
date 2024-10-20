resource "aws_route_table" "route-table-prod-subnet" {
  vpc_id = aws_vpc.mini-prod-vpc.id
  tags = {
    Name = "route-table-prod-subnet"
  }
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.python-project-nat.id
  }

  lifecycle {
    ignore_changes = all
  }

}
resource "aws_route_table_association" "a" {
  count          = 1 #lenth function=reuired for your varibale bolck is present at variable bolck than u get out from  there first
  route_table_id = aws_route_table.route-table-prod-subnet.id
  subnet_id      = aws_subnet.vpc_prod_subnet[1].id #here you get indexing now
  lifecycle {
    ignore_changes = all
  }
}
