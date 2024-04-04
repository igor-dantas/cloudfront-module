variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}


variable "bucket_name" {
  type        = string
  description = "name of your s3 bucket"
}


variable "tags" {
  type        = map(any)
  description = "map of tags to add on all aws resources"
}

variable "website_dir" {
  type        = string
  description = "Your website directory to copy the files to s3"
}