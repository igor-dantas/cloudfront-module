variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}


variable "bucket_name" {
  type        = string
  description = "name of your s3 bucket"
}

variable "website_dir" {
  type        = string
  description = "Your website directory to copy the files to s3"
}

variable "protocol_policy" {
  type        = string
  description = "What is the protocol you want to use, it can be allow-all, redirect-to-https or https-only"
}

variable "authorized_locations" {
  type        = list(any)
  description = "what locations do you want to make available?"
}

variable "default_certificate" {
  type        = bool
  description = "Activating ssl configurantion"
}

variable "restriction" {
  type        = string
  description = "Method that you want to use to restrict distribution of your content by country: none, whitelist, or blacklist."
}