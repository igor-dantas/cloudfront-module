
resource "aws_s3_bucket_policy" "devops_project_s3_policy" {
  bucket = aws_s3_bucket.devops_project_s3.id
  policy = data.aws_iam_policy_document.devops_project_allow_acess_public.json
}

data "aws_iam_policy_document" "devops_project_allow_acess_public" {
  statement {
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.devops_project_s3.arn}/*",
    ]
  }
}