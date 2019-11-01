variable "aws_region" {
  description = "AWS region"
  default = "us-east-2"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default = "ami-f63b1193"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "ajennings-40"
}

variable "key_name" {
   description = "name of the SSH key for accessing the instance"
   default = "tfe-ajennings"
  }  

variable "volume_size" {
  description = "the size of root device"
  default = "40"
}

variable "s3_bucket_arn" {
  description  = "arn of the s3 bucket for collection"
  default      = "arn:aws:s3:::hc-sec-flow-logs"
  }

variable "aws_vpc" { 
  description   = "vpc id"
  default       = "vpc-0a317ca1447094027"
  } 
