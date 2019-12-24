provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

terraform {
  required_version = "< 0.12.0"
}
resource "aws_s3_bucket" "b" {
  bucket = "test-bucket-reddy"
  acl    = "private"

  tags = {
    Name        = "My-bucket"
    Environment = "QA"
  }
}
