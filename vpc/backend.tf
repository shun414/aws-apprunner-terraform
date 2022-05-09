terraform {
  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "vpc.tfstate"
    region = "ap-northeast-1"
  }
}
