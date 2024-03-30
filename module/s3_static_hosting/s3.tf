resource "aws_s3_bucket" "devops_project_s3" {
  bucket = var.bucket_name

  tags = merge(
    var.tags,
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

resource "aws_s3_bucket_public_access_block" "devops_project_access_block" {
  bucket = var.bucket_name

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_acls
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}