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
  count =2
  root_block_device {
    volume_size = "${var.volume_size}"
  }
 
 provisioner "chef" {

     connection {
           type        = "ssh"
           user        = "azureuser"
           private_key = "${var.private_key}"
   
}
   attributes_json = <<-EOF
      {
        "key": "value",
        "app": {
          "cluster1": {
            "nodes": [
              "chef-terraform"
            ]
          }
        }
      }
    EOF

    environment     = "ajennings_test"
    run_list        = ["recipe[chef_terraform_azure_demo]"]
    node_name       = "chef-terraform"
    server_url      = "https://api.chef.io/organizations/ajennings"
    recreate_client = true
    fetch_chef_certificates = true
    user_name       = "ajennings"
    user_key        = "${var.key_material}"
    version         = "12.21.1"
    # If you have a self signed cert on your chef server change this to :verify_none
    ssl_verify_mode = ":verify_none"
}
  tags {
    environment = "Terraform AWS Chef Demo"
  }
}
