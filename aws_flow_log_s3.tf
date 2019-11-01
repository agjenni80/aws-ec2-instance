resource "aws_flow_log" "example" {
  log_destination      = "${arn:aws:s3:::hc-sec-flow-logs/*}"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = "${aws_vpc.example.id}"
}

resource "aws_s3_bucket" "hc-sec-flow-logs" {
  bucket = "hc-sec-flow-logs"
}
