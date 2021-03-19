 output "test_id" {
     value = aws_instance.test.id
     description = "Output value"
 }

output "test_public_ip" {
     value = aws_instance.test.public_ip
 }