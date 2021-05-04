terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
  }
  provider "aws" {
        region = "us-east-2"
        profile = "dev1"   ## If you used the method 2 above to set up a local profile
      }
      