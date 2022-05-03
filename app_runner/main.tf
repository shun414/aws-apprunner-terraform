resource "aws_apprunner_service" "this" {
  service_name = var.app_name 

  source_configuration {
    authentication_configuration {
      access_role_arn = data.terraform_remote_state.iam.outputs.iam_role_app_runner_arn
    }

    image_repository {
      image_configuration {
        port = var.app_listen_port
      }
      image_identifier = "${data.terraform_remote_state.outputs.ecr_repository_url}:latest"
      image_repository_type = "ECR"
    }

    instance_configuration {
      cpu     = 1024
      memorty = 2048
    }

    auto_deployments_enabled = true
  }
}
