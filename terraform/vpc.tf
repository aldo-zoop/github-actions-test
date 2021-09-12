resource "aws_vpc" "prod-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags {
    Name = "Prod-VPC"
  }
}
