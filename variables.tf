variable "aws_region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "ami_id" {
  description = "ID of the AMI to provision. CentOS Linux 7"
  default = "ami-e1496384"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.xlarge"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "ajennings"
}

variable "volume_size" {
  description = "the size of root device"
  default = "40"
}
