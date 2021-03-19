resource "aws_instance" "test" {
    ami           = var.ami-us-east-1 
    instance_type = "t2.micro"
    tags = {
      Name = "test instance"
      ami = "Instance of ${var.ami-us-east-1}"
    }
}