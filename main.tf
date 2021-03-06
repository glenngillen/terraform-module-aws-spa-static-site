module "bucket" {
    source  = "./modules/s3_spa_static_site"

    domain = var.domain
}

module "cdn" {
    source = "./modules/cdn"

    domain_aliases = concat([var.domain], var.domain_aliases)
    certificate_arn = var.certificate_arn
    cloudfront_access_identity_path = module.bucket.cloudfront_access_identity_path
    s3_bucket_regional_name = module.bucket.s3_bucket_regional_name
    logging_enabled = var.logging_enabled
    logging_config = var.logging_config
}