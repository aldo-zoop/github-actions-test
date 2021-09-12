resource "aws_eip" "elastic-ip-for-nat-gtw" {
  vpc                       = true
  associate_with_private_ip = "10.0.0.5"
//  tags = {
//    Name = "Prod EIP"
//  }
}