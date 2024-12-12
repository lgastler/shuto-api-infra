module "ecr" {
  source = "./modules/ecr"
  repository_name = "shuto-api"
}

module "iam" {
  source = "./modules/iam"
  github_org = var.github_org
  github_repo = var.github_repo
  ecr_repository_arn = module.ecr.repository_arn
}

module "apprunner" {
  source = "./modules/apprunner"
  rclone_server_vendor = var.rclone_server_vendor
  rclone_server_url = var.rclone_server_url
  rclone_server_user = var.rclone_server_user
  rclone_server_pass = var.rclone_server_pass
  apprunner_service_role_arn = module.iam.apprunner_service_role_arn
  ecr_repository_url = module.ecr.repository_url
}