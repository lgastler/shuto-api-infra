# Shuto API Infrastructure

This repository contains the Terraform configuration for deploying and managing the Shuto API infrastructure on AWS.

## Infrastructure Components

The infrastructure consists of the following main components:

- **Amazon ECR Repository**: For storing Docker container images
- **IAM Roles and Policies**: Manages permissions for GitHub Actions and App Runner
- **AWS App Runner**: Runs the containerized application with rclone configuration

## Prerequisites

- Terraform installed (version X.X.X or later)
- AWS CLI configured with appropriate credentials
- GitHub repository access

## Required Variables

The following variables need to be configured:

```
github_org # GitHub organization name
github_repo # GitHub repository name
rclone_server_vendor # rclone server vendor
rclone_server_url # rclone server URL
rclone_server_user # rclone server username
rclone_server_pass # rclone server password
```

## Module Structure

├── modules/
│ ├── ecr/ # Amazon ECR repository configuration
│ ├── iam/ # IAM roles and policies
│ └── apprunner/ # AWS App Runner service configuration
└── main.tf # Main Terraform configuration
