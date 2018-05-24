output "public_dns" {
  value = "${aws_instance.centos.public_dns}"
}
