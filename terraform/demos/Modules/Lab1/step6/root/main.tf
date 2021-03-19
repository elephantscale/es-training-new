// Starting point
// Make sure all the resources are created correctly

module "hello_app0" {
  source = "../modules/server"
  instance_type = var.instance_types[0]
  app_name = var.app_names[0]
}

module "hello_app1" {
  source = "../modules/server"
  instance_type = var.instance_types[1]
  app_name = var.app_names[1]
}

resource "aws_security_group" "app_port" {
    description = " Security group to allow access app instance"
    ingress {
    description = "OpenPort"
    from_port   = var.access_port
    to_port     = var.access_port
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
    Name = "Hello App"
  }
}

