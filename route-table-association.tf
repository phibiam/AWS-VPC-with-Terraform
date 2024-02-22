resource "aws_route_table_association" "public_subnet_asso" {
  count = length(var.cidr_public_subnet)
  depends_on = [ aws_subnet.demo_public_subnet, aws_route_table.public_demo_route_table ]
  subnet_id = element(aws_subnet.demo_public_subnet[*].id, count.index)
  route_table_id = aws_route_table.public_demo_route_table.id
}

resource "aws_route_table_association" "private_subnet_asso" {
  count = length(var.cidr_private_subnet)
  depends_on = [ aws_subnet.demo_private_subnet, aws_route_table.private_demo_route_table ]
  subnet_id = element(aws_subnet.demo_private_subnet[*].id, count.index)
  route_table_id = aws_route_table.private_demo_route_table[count.index].id
}
