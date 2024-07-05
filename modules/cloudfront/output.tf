output "cdn_url" {
    value = aws_cloudfront_distribution.cloudfront_static_website.domain_name
  
}

# output "aws_cloudfront" {
#   value = aws_cloudfront_distribution.cloudfront
# }