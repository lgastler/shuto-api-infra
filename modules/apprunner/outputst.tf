output "service_url" {
  value = aws_apprunner_service.api_service.service_url
}

output "service_arn" {
  value = aws_apprunner_service.api_service.arn
}

output "custom_domain_certificate_validation_records" {
  value = aws_apprunner_custom_domain_association.custom_domain.certificate_validation_records
}

output "custom_domain_dns_target" {
  value = aws_apprunner_custom_domain_association.custom_domain.dns_target
}