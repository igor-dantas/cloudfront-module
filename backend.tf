terraform {
  backend "s3" {
    bucket = "cloudfront-tf-state-igor"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
