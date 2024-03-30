resource "aws_s3_object" "devops_project_copy_object" {
  bucket       = aws_s3_bucket.devops_project_s3.id
  for_each     = fileset("${var.website_dir}", "**")
  key          = each.value
  source       = "${var.website_dir}${each.value}"
  etag         = filemd5("${var.website_dir}${each.value}")
  content_type = "text/html"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_static_files"
    }
  )
}