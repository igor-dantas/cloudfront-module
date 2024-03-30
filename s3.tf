resource "aws_s3_bucket" "devops_project_s3" {
  bucket = "${var.project_name}_s3"

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}_s3"
    }
  )
}

resource "aws_s3_bucket_website_configuration" "devops_project_website_configuration" {
  bucket = aws_s3_bucket.devops_project_s3.id

  index_document {
    suffix = var.index_document
  }
}