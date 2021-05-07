
resource "aws_instance" "x" {
  instance_type = "t2.micro"
  ami           = "ami-077e31c4939f6a2f3"
  tags = {
    Name = "Resource X"
  }
}

resource "aws_instance" "y" {
  instance_type = "t2.micro"
  ami           = "ami-077e31c4939f6a2f3"
  tags = {
    Name = "Resource Y"
  }
}
