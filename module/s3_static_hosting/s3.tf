resource "aws_s3_bucket" "devops_project_s3" {
  bucket = var.bucket_name

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_s3"
    }
  )
}

