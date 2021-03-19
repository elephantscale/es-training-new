terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" # gets the executable code
      version = " >= 2.0"
    }
  }
  required_version = ">=0.14"
}

provider "aws" {
  profile = "rod"
  region  = "us-east-1"
}