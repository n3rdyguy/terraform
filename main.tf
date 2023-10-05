provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "myS3Bucket" {
  bucket = var.name
  force_destroy = true
}
