resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.prod-vpc.id
  tags {
    Name = "Public Route table"
  }
}

resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.prod-vpc.id
  tags {
    Name = "Private Route table"
  }
}

resource "aws_route_table_association" "public-subnet-1-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id      = aws_subnet.public-subnet-1.id
}

resource "aws_route_table_association" "public-subnet-2-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id      = aws_subnet.public-subnet-2.id
}

resource "aws_route_table_association" "public-subnet-3-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id      = aws_subnet.public-subnet-3.id
}