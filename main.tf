
# Configure the AWS Provider
provider "aws" {
  version = "~> 1.60"
  region  = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-080146b44c2e28be4"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

output "ip" {
  value = "${aws_eip.ip.public_ip}"
}