provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
terraform {
  required_version = "< 0.12.0"
}
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
    bucket        = "test-bucket-reddy-${random_id.tf_bucket_id.dec}"
    acl           = "private"


    tags {
      Name = "tf_bucket"
    }
}