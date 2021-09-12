variable "region" {
  region = "us-east-1"
}


variable "vpc_cidr" {
  default    = "10.0.0.0/16"
  descriptio = "CIDR"
}

variable "public_subnet_1_cidr" {
  description = "Public subnet 1 cidr"

}

variable "public_subnet_2_cidr" {
  description = "Public subnet 2 cidr"

}

variable "public_subnet_3_cidr" {
  description = "Public subnet 3 cidr"

}

variable "private_subnet_1_cidr" {
  description = "Private subnet 3 cidr"

}

variable "private_subnet_2_cidr" {
  description = "Private subnet 2 cidr"

}

variable "private_subnet_3_cidr" {
  description = "Private subnet 3 cidr"

}