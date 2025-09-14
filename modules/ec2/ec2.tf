provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b09ffb6d8b58ca91"   # Amazon Linux 2 (example)
  instance_type = var.instance_type

  tags = local.common_tags
}
