provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "prod_server" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"

  tags = {
    Name = "prod-server"
    Env  = "prod"
  }
}
