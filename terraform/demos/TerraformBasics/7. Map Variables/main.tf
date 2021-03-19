resource "aws_instance" "test-micro" {
    ami           = var.my_type["amitype"]
    instance_type = var.my_type["insttype"]
}

