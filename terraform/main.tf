terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-0f980b876fce6ce35"
  instance_type = "t3.micro"
  key_name      = "WEBSERVER"

  tags = {
    Name = "DevOps-Lab-Server"
  }
}
