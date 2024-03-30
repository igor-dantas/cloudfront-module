# resource "aws_s3_object" "object" {
#   bucket = aws_s3_bucket.devops_project_s3.id
#   key    = "new_object_key"
#   source = "path/to/file"

# tags = merge(
#     local.tags,
#     {
#       Name = "${var.project_name}_static_files"
#     }
#   )
# }