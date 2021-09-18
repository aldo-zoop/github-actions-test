resource "aws_launch_configuration" "ec2_private_launch_configuration" {
  image_id = data.aws_ami.launch_configuration_ami.id
  instance_type = "t3.micro"
}