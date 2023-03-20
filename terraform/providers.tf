terraform {
  required_providers {
    aws = {
        soursource = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
  provider "aws" {
    region = "us-east-1"
  }
}
