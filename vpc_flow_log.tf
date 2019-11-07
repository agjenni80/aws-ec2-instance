terraform {
  required_version = ">= 0.12"
  }

provider "aws" {
  region = "${var.aws_region}"
}

//--------------------------------------------------------------------
// Modules
module "vpc_flowlogs" {
  source  = "app.terraform.io/agjenni/vpc-flowlogs/aws"
  version = "0.0.4"

  bucket_name_prefix = "hc-sec-flow-logs"
  bucket_region = "us-east-1"
  vpc_id = "vpc-0014580f256a1c96b"
}
