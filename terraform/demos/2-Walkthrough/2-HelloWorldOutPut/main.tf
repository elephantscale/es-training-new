
resource "aws_instance" "hw" {
  instance_type = "t2.micro"
  ami           = "ami-077e31c4939f6a2f3"
  tags = {
    Name = "HelloWorld"
  }
}

output "HW_private_ip" {
  description = "Hello World EC2 Instance IP Address"
  value = aws_instance.hw.private_ip
}

