resource "aws_apprunner_service" "this" {
  service_name = var.app_name 

  source_configuration {
    authentication_configuration {
      access_role_arn = module.aws_iam_role_app_runner.arn
    }

    image_repository {
      image_configuration {
        port = var.app_listen_port
      }
      image_identifier = "${aws_ecr_repository.this.url}:latest"
      image_repository_type = "ECR"
    }

    instance_configuration {
      cpu     = 512
      memorty = 1024
    }

    auto_deployments_enabled = true
  }
}
