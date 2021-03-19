resource "aws_instance" "hello_app" {

   ami = var.ami_type
   instance_type = var.instance_type


    user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

    tags = {
       Name = "${var.app_name} App"
    }
    //vpc_security_group_ids = [aws_security_group.app_port.id]
}