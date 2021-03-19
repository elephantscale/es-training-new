resource "aws_instance" "hello_app1" {

   // ami = var.ami_type
   // instance_type = var.instance_type
   ami = "ami-03d315ad33b9d49c4"
   instance_type = "t2.micro"

    user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

    tags = {
        //Name = "${var.app_name} App"
        Name = "Module"
    }
    //vpc_security_group_ids = [aws_security_group.app_port.id]
}