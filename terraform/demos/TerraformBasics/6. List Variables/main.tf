resource "aws_instance" "test-micro" {
    ami           = var.ami-us-east-1 
    instance_type = var.instance_list[0]
    tags ={
      Name = "test instance"
      ami = "Instance of ${var.instance_list[0]}"
    }
}

resource "aws_instance" "test-nano" {
    ami           = var.ami-us-east-1 
    instance_type = var.instance_list[1]
    tags ={
      Name = "test instance"
      ami = "Instance of ${var.instance_list[1]}"
    }
}
