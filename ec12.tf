terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  profile = "Raghava"
}
resource "aws_instance" "cat" {
    ami = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"
    tags = {
        Name = "Helloworld1"
        }
}