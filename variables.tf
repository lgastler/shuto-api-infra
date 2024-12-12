# GitHub-related variables
variable "github_org" {
  type        = string
  description = "GitHub organization name"
}

variable "github_repo" {
  type        = string
  description = "GitHub repository name"
}

# Rclone-related variables
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