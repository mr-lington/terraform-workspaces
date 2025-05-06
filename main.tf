# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
availability_zone = "eu-west-3a"
  tags = {
    Name = var.subnet
  }
}