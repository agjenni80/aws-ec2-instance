terraform {
  required_version = ">= 0.11.1"
}

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"
  associate_public_ip_address = "true"
  count = 1
  root_block_device {
    volume_size = "${var.volume_size}"
  }
  tags {
    Name = "${var.name}"
  }
}
