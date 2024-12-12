output "github_actions_role_arn" {
  value       = aws_iam_role.github_actions.arn
  description = "ARN of the GitHub Actions role for ECR access"
}

output "apprunner_service_role_arn" {
  value       = aws_iam_role.apprunner_service_role.arn
  description = "ARN of the App Runner service role"
}