resource "aws_eip" "nat_eip" {
  count = length(var.cidr_private_subnet)
  domain = "vpc"
}
resource "aws_nat_gateway" "nat_gateway" {
  count = length(var.cidr_private_subnet)
  depends_on = [aws_eip.nat_eip]
  allocation_id = aws_eip.nat_eip[count.index].id
  subnet_id     = aws_subnet.demo_private_subnet[count.index].id

  tags = {
    Name = "Private NAT GW"
  }
}
