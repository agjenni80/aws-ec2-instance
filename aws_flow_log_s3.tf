resource "aws_flow_log" "hc-sec-logs" {
  log_destination      = "${arn:aws:s3:::hc-sec-flow-logs}"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = "${vpc-0a317ca1447094027}"
}

resource "aws_s3_bucket" "hc-sec-flow-logs" {
  bucket = "hc-sec-flow-logs"
}
