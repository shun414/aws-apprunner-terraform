terraform {
  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "iam.tfstate"
    region = "ap-northeast-1"
  }
}
