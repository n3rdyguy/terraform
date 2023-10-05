provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "myS3Bucket" {
  bucket        = var.name
  force_destroy = true
}

resource "aws_s3_bucket_acl" "myS3Bucket" {
  bucket = aws_s3_bucket.myS3Bucket.bucket
  acl    = var.acl
}