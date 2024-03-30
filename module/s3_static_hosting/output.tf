output "static_url" {
  value = aws_s3_bucket_website_configuration.devops_project_website_configuration.website_endpoint
}