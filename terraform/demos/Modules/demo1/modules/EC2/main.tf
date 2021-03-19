resource "aws_instance" "alpha" {
    ami = "ami-047a51fa27710816e"
    instance_type = "t2.micro"
    tags = {
        source = "EC2 Module"
    }
}