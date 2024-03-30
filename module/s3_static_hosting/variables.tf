variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "index_document" {
  type        = string
  description = "the name of index file"
}

variable "bucket_name" {
  type        = string
  description = "name of your s3 bucket"
}


variable "tags" {
  type        = map(any)
  description = "map of tags to add on all aws resources"
}

variable "block_public_acls" {
  type        = bool
  description = "Specifies whether public access to Access Control Lists (ACLs) is blocked."
}

variable "block_public_policy" {
  type        = bool
  description = "Specifies whether public policies are blocked for the bucket."
}

variable "ignore_public_acls" {
  type        = bool
  description = "Specifies whether public access to Access Control Lists (ACLs) is ignored."
}

variable "restrict_public_buckets" {
  type        = bool
  description = "Specifies whether public buckets are restricted."
}

variable "website_dir" {
  type        = string
  description = "Your website directory to copy the files to s3"
}