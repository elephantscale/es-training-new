
resource "aws_instance" "hw" {
  instance_type = "t2.micro"
  ami           = "ami-077e31c4939f6a2f3"
  tags = {
    Name = "HelloWorld"
  }
}

