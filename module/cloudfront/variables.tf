variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "origin_id" {
  type        = string
  description = "unkown at the moment"
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

variable "tags" {
  type        = map(any)
  description = "map of tags to add on all aws resources"
}

variable "restriction" {
  type        = string
  description = "Method that you want to use to restrict distribution of your content by country: none, whitelist, or blacklist."
}

variable "origin_id_output" {
  type        = string
  description = "test"
}