output "bucket_name" {
  value = module.s3_static_hosting.bucket_name_output
}

output "origin_id" {
  value = module.s3_static_hosting.origin_id_output
}

output "static_url" {
  value = module.s3_static_hosting.static_url_output
}

output "url_cloudfront" {
  value = module.cloudfront.distribution_url
}