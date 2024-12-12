# IAM Outputs
output "github_actions_role_arn" {
  description = "ARN of the GitHub Actions role"
  value       = module.iam.github_actions_role_arn
}

# App Runner Outputs
output "apprunner_service_url" {
  description = "URL of the App Runner service"
  value       = module.apprunner.service_url
}

output "custom_domain_certificate_validation_records" {
  description = "Certificate validation records for the custom domain"
  value       = module.apprunner.custom_domain_certificate_validation_records
}

output "custom_domain_dns_target" {
  description = "DNS target for the custom domain"
  value       = module.apprunner.custom_domain_dns_target
}