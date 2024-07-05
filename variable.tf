
variable "region" {
  default = "us-east-2"
}

variable "access_key" {
  description = "This is the access key"
  type        = string
}

variable "secret_key" {
  description = "This is the secret key"
  type        = string
}

variable "env" {
  description = "Environment to deploy to"
  type        = string
}

variable "domain_name" {
  description = "custom domain name"
  type        = string
}

variable "certificate_arn" {
  description = "certicate arn"
  type        = string
}

variable "cloudfront_hosted_zone_id" {
  description = "certicate arn"
  type        = string
}

