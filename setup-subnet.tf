# Setup public subnet
resource "aws_subnet" "demo_public_subnet" {
  count = length(var.cidr_public_subnet)
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.us_west_1_AZ, count.index)

  tags = {
    Name = "Subnet-Public : Public Subnet ${count.index + 1}"
  }
}

# Setup private subnet
resource "aws_subnet" "demo_private_subnet" {
  count = length(var.cidr_private_subnet)
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = element(var.cidr_private_subnet, count.index)
  availability_zone = element(var.us_west_1_AZ, count.index)

  tags = {
    Name = "Subnet-Private : Private Subnet ${count.index + 1}"
  }
}
