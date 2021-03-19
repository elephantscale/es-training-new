// Starting point
// Make sure all the resources are created correctly

resource "aws_instance" "hello_app" {

    ami = "ami-03d315ad33b9d49c4"
    instance_type = "t2.micro"

    user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

    tags = {
        Name = "Hello App"
    }
    vpc_security_group_ids = [aws_security_group.app_port.id]
}

resource "aws_security_group" "app_port" {
    description = " Security group to allow access app instance"
    ingress {
    description = "OpenPort"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "HelloApp Security Group"
  }
}

