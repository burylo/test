data "aws_ami" "amz_linux_ami" {
  most_recent = true
  owners = [ "137112412989" ]
  filter{
    name = "name"
    values = [ "amzn2-ami-kernel-5.10-hvm-2.0.20*-x86_64-gp2" ]
  }
}