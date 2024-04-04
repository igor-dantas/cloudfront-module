output "bucket_name_output" {
  value = aws_s3_bucket.devops_project_s3.id
}

output "origin_id_output" {
  value = aws_s3_bucket.devops_project_s3.bucket_regional_domain_name
}