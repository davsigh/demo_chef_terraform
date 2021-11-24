resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket
  acl = "private"
  force_destroy = "true"
}
