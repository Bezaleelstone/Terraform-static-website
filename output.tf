output "cdn_output" {
  value = module.cloudfront.cdn_url

}

# output "cloudfront_output" {
#   value = module.cloudfront.aws_cloudfront.hosted_zone_id
# }

output "bucketname_output" {
  value = module.s3_bucket.bucket_name

}

output "bucket_endpoint" {
  description = "The website endpoint of the S3 bucket."
  value       = module.s3_bucket.bucket_endpoint
}


output "certificate_arn" {
  value = module.certificate.acm_certificate_arn
}


# output "bucketpolicy_output" {
#     value = module.s3_bucket.bucket_name_policy
# }

# output "bucket_endpoint_output" {
#     value = module.s3_bucket.bucket_endpoint
# }

