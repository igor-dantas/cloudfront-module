output "distribution_url" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "policy" {
  value = aws_cloudfront_origin_access_identity.origin_access.iam_arn
}