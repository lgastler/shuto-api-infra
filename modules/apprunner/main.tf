# Auto Scaling Configuration
resource "aws_apprunner_auto_scaling_configuration_version" "app_autoscaling" {
  auto_scaling_configuration_name = "api-autoscaling"
  
  max_concurrency = 100
  max_size        = 5
  min_size        = 1
  
  tags = {
    Name = "api-autoscaling"
  }
}

# App Runner Service
resource "aws_apprunner_service" "api_service" {
  service_name = "api-service"

  source_configuration {
    auto_deployments_enabled = true
    
    image_repository {
      image_configuration {
        port = "8080"
        runtime_environment_variables = {
          RCLONE_CONFIG_SERVER_VENDOR = var.rclone_server_vendor
          RCLONE_CONFIG_SERVER_URL    = var.rclone_server_url
          RCLONE_CONFIG_SERVER_USER   = var.rclone_server_user
          RCLONE_CONFIG_SERVER_PASS   = var.rclone_server_pass
        }
      }
      image_identifier      = "${var.ecr_repository_url}:latest"
      image_repository_type = "ECR"
    }

    authentication_configuration {
      access_role_arn = var.apprunner_service_role_arn
    }

  }

  instance_configuration {
    cpu    = "1024"
    memory = "2048"
    instance_role_arn = var.apprunner_service_role_arn
  }

  auto_scaling_configuration_arn = aws_apprunner_auto_scaling_configuration_version.app_autoscaling.arn

}

resource "aws_apprunner_custom_domain_association" "custom_domain" {
  domain_name = "api-aws.shuto.lg-apps.tech"
  service_arn = aws_apprunner_service.api_service.arn
  enable_www_subdomain = false
}