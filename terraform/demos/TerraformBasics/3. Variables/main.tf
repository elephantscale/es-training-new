resource "aws_instance" "test" {
  ami     =      var.ami-us-east-1  
  instance_type = var.inst_type
  tags = {
    Name = "test instance"
  }
}
