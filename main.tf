terraform {
  required_version = ">= 0.11.1"
}

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "ubuntu" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"
  associate_public_ip_address = "true"
<<<<<<< HEAD
  count = 3
=======
  count = 4
>>>>>>> c4c343ff32ca6f9ca37d52afa02840e876f73227
  root_block_device {
    volume_size = "${var.volume_size}"
  }
  tags {
    Name = "${var.name}"
  }
}
