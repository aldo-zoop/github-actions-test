terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
  backend "local" {}
}

provider "aws" {
  profile                     = "default"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  skip_get_ec2_platforms      = true
  s3_force_path_style         = true

  endpoints {
    s3               = "http://localhost:4566"
    dynamodb         = "http://localhost:4566"
    lambda           = "http://localhost:4566"
    iam              = "http://localhost:4566"
    cloudwatchlogs   = "http://localhost:4566"
    cloudwatch       = "http://localhost:4566"
    cloudwatchevents = "http://localhost:4566"
    sqs              = "http://localhost:4566"
    ec2              = "http://localhost:4566"
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}