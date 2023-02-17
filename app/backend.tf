terraform {
  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
