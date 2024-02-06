terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-039e1f129f345d75f"
  instance_type = "t2.nano"
  tags = {
    Name = "HelloWorld"
  }
}
