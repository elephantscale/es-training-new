
# Example 02-05

locals {
    name = "example 05"
    port = 8080
    private = true
}

resource "aws_instance" "myVM" {
    ami = var.ami_type
    instance_type = var.inst_type
    tags = {
        Name = local.name 
    }
}

