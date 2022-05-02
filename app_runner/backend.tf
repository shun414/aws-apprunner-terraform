terraform {
  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "app_runner.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "iam" {
  backend = "s3"

  config = {
    bucket = "terraform-tfstate"
    key    = "iam.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "ecr" {
  backend = "s3"

  config = {
    bucket = "terraform-tfstate"
    key    = "ecr.tfstate"
    region = "ap-northeast-1"
  }
}
