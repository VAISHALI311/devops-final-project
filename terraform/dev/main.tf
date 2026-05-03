provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev_server" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"

  tags = {
    Name = "dev-server"
    Env  = "dev"
  }
}
