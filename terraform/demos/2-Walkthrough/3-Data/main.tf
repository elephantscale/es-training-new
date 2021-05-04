data "aws_region" "my_region" { }

output "my_aws_region" {
  description = "AWS region"
  value       = data.aws_region.my_region.name
}
