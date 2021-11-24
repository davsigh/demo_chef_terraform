output "s3-bucket-name" {
  value = aws_s3_bucket.my_bucket.id
}
output "s3-bucket-arn" {
  value = aws_s3_bucket.my_bucket.arn
}
output "s3_bucket_domain_name" {
    value = aws_s3_bucket.my_bucket.bucket_domain_name
}
