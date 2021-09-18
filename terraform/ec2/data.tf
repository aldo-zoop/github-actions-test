data "terraform_remote_state" "infrastucture_remote_state" {
  backend = "s3"
  config = {
    bucket = "terraform-state"
    key    = "infrastructure/terraform.tfstate"
    region = "us-east-1"
  }
}

data "aws_ami" "launch_configuration_ami" {
  most_recent = true
  filter {
    name = "owner-alias"
    values = ["amazon"]
  }
}