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
  count = 3
  root_block_device {
    volume_size = "${var.volume_size}"
  }
  
  resource "aws_flow_log" "hc-sec-flow-logs" {
    log_destination      = "${var.s3_bucket_arn}"
    log_destination_type = "s3"
    traffic_type         = "ALL"
    vpc_id               = "${var.aws_vpc}"
 }
  
  resource "aws_s3_bucket" "hc-sec-example" {
    bucket  = "hc-sec-flow-logs"
    }
  
  tags {
    Name = "${var.name}"
  }
}
