resource "aws_s3_object" "devops_project_copy_object" {
  bucket       = aws_s3_bucket.devops_project_s3.id
  for_each     = fileset("website/", "**")
  key          = each.value
  source       = "website/${each.value}"
  etag         = filemd5("website/${each.value}")
  content_type = "text/html"

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_static_files"
    }
  )
}