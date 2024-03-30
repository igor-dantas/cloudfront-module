module "s3_static_hosting" {
  source                  = "./module/s3_static_hosting"
  project_name            = var.project_name
  bucket_name             = var.bucket_name
  index_document          = var.index_document
  tags                    = local.tags
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  website_dir             = var.website_dir
}