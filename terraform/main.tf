provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-017c2c70e860fa905"
  instance_type = "t3.micro"
  key_name      = "WEBSERVER"

  tags = {
    Name = "DevOps-Lab-Server"
  }
}