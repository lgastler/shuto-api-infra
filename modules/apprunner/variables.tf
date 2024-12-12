variable "rclone_server_vendor" {
  type        = string
  description = "Rclone server vendor"
}

variable "rclone_server_url" {
  type        = string
  description = "Rclone server URL"
}

variable "rclone_server_user" {
  type        = string
  description = "Rclone server username"
}

variable "rclone_server_pass" {
  type        = string
  description = "Rclone server password"
  sensitive   = true
}

variable "apprunner_service_role_arn" {
  type        = string
  description = "ARN of the App Runner service role"
}

variable "ecr_repository_url" {
  description = "The URL of the ECR repository containing the application image"
  type        = string
}