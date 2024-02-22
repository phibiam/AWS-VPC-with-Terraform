# CIDR --> 10.0.0.0/16
resource "aws_vpc" "demo-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "VPC = demo-us-west-1"
  }
}
