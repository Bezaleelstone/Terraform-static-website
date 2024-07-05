

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = module.s3_bucket.bucket_name
  domain_name = module.s3_bucket.bucket_endpoint
}

module "cloudfront" {
  source          = "./modules/cloudfront"
  bucket_name     = module.s3_bucket.bucket_name
  domain_name     = module.s3_bucket.bucket_endpoint
  certificate_arn = module.certificate.acm_certificate_arn
  # bucket_arn  = module.s3_bucket.bucket_policy
}

module "certificate" {
  source              = "./modules/certificate"
  domain_name         = var.domain_name
  aws_route53_zone_id = module.route53.route53.zone_id
}

module "route53" {
  source                    = "./modules/route53"
  domain_name               = var.domain_name
  env                       = var.env
  cloudfront_domain_name    = module.cloudfront.cdn_url
  cloudfront_hosted_zone_id = var.cloudfront_hosted_zone_id
}