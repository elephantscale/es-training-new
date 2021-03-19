
terraform {
  backend "s3" {
      profile = "rod"
    # Replace this with your bucket name!
    bucket         = "zippy002-s3"
    key            = "example/terraform.tfstate"
    region         = "us-east-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "myLockTable"
    encrypt        = true
  }
}
provider "aws" {
    region = "us-east-2"
    profile = "rod"
}

resource "aws_instance" "ex1" {
    ami = "ami-01aab85a5e4a5a0fe"
    instance_type = "t2.micro"
    tags = {
        Name = "State Demo"
    }  
}