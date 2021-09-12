resource "aws_nat_gateway" "prod-nat-gateway" {
  allocation_id = aws_eip.elastic-ip-for-nat-gtw.id
  subnet_id     = aws_subnet.public-subnet-3.id
  depends_on    = [aws_eip.elastic-ip-for-nat-gtw]

  tags {
    Name = "Prod NAT"
  }
}

resource "aws_route" "nat-gw-route" {
  route_table_id         = aws_route_table.private-route-table.id
  nat_gateway_id         = aws_nat_gateway.prod-nat-gateway.id
  destination_cidr_block = "0.0.0.0/0"
}
