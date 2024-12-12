variable "github_org" {
  type        = string
  description = "GitHub organization name"
}

variable "github_repo" {
  type        = string
  description = "GitHub repository name"
}

variable "ecr_repository_arn" {
  type        = string
  description = "ARN of the ECR repository"
}