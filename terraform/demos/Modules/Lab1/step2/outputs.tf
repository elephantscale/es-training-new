output "app_id" {
    description = "Id of the hello app"
    value = aws_instance.hello_app.id
}

output "app_ip" {
    description = "Public ip of the hello app"
    value = aws_instance.hello_app.public_ip
}