module "s3_static_hosting" {
  source                  = "./module/s3_static_hosting"
  project_name            = var.project_name
  bucket_name             = var.bucket_name
  index_document          = var.index_document
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  website_dir             = var.website_dir
  tags                    = local.tags
}

module "cloudfront" {
  source               = "./module/cloudfront"
  project_name         = var.project_name
  origin_id            = module.s3_static_hosting.origin_id_output
  protocol_policy      = var.protocol_policy
  authorized_locations = var.authorized_locations
  default_certificate  = var.default_certificate
  restriction          = var.restriction
  origin_id_output     = module.s3_static_hosting.origin_id_output
  tags                 = local.tags
}