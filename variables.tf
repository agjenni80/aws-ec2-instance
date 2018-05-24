variable "aws_region" {
  description = "AWS region"
  default = "us-east-2"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Consul Build of Ubuntu 16.04"
  default = "ami-022f81c5506e84bc9"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.small"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "Provisioned very quickly by Terraform"
}

variable "volume_size" {
  description = "the size of root device"
  default = "10"
}
