provider "aws" {
    profile = "rod"
    region = "us-east-1"
}
resource "aws_instance" "EC2" {
    ami = "ami-047a51fa27710816e"
    instance_type = "t2.micro"
}
resource "aws_s3_bucket" "zippy" {
  bucket = "terraform-zippy"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }

  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "state-locks" {
  name         = "terraform-up-and-running-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


output "s3_bucket_arn" {
  value       = aws_s3_bucket.zippy.arn
  description = "The ARN of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.state-locks.name
  description = "The name of the DynamoDB table"
}

/* To use this backend for other projects, add the following code to the other projects
 * do not use the s3 backed end to manage its own state

 terraform {
  backend "s3" {
    profile = "rod"
    # Replace this with your bucket name!
    bucket         = "terraform-zippy"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
*/
