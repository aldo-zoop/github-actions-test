resource "aws_subnet" "public-subnet-1" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public Subnet 2"
  }
}

resource "aws_subnet" "public-subnet-3" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.public_subnet_3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "Public Subnet 3"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "Private Subnet 1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private Subnet 2"
  }
}

resource "aws_subnet" "private-subnet-3" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = var.private_subnet_3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "Private Subnet 3"
  }
}