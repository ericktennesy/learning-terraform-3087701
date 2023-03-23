data "aws_ami" "app_ami" {
  most_recent = true
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_instance" "blog" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "ScalingTest"
  }
}