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