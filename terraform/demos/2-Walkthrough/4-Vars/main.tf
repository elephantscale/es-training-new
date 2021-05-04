
variable "my_ami" {}

resource "aws_instance" "hw" {
  instance_type = "t2.nano"
  ami           = var.my_ami
}

