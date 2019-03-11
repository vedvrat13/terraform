# Configure the AWS Provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  version = "< 2"
  region  = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-080146b44c2e28be4"
  instance_type = "t2.micro"
}
