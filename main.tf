terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
        }
    }
   required_version = ">= 1.2.0"
}
provider "aws" {
    access_key = "var.AWS_ACCESS_KEY"
    secret_key = "var.AWS_SECRET_KEY"
    region = "ap-south-1"
}

resource "aws_instance" "foo" {
  ami           = "ami-0f5ee92e2d63afc18" # ap-south-1
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
