variable "bucket_name" {
  description = "This variable contains the name of the bucket"
  # type = string
}

variable "domain_name" {
  description = "This the domain name of the s3 website"
  type = string
}

variable "certificate_arn" {
  description = "This the domain name of the s3 website"
  type = string
}


# variable "bucket_arn" {
#   description = "This is used to conigure the bucket policy"
#   type = string
# }


# variable "certificate_arn" {}
