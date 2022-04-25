terraform {
  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "app_runner.tfstate"
    region = "ap-northeast-1"
  }
}
