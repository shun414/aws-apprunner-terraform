terraform {
  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "ecr.tfstate"
    region = "ap-northeast-1"
  }
}
