terraform {
  required_providers {
    aws = "~> 3.0.0"
  }

  required_version = ">= 0.12.30"
  backend "s3" {
    bucket         = "terraformstate"
    key            = "infrastructure/terraform.tfstate"
    dynamodb_table = "terraformlock"
    region         = "us-east-1"
  }
}


provider "aws" {
  profile                     = "default"
  region                      = var.region
  access_key                  = "test"
  secret_key                  = "test"
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
