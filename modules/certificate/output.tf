output "acm_certificate" {
  value=aws_acm_certificate.cert
}

output "acm_certificate_arn" {
  value= aws_acm_certificate.cert.arn
}