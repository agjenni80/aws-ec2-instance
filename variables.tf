variable "aws_region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "ami_id" {
  description = "ID of the AMI to provision. This is a Nomad-AWS-Terraform-AMI"
  default = "ami-75132e10"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.small"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "Provisioned by Terraform"
}
