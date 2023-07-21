terraform {
  backend "s3" {
    bucket = "k8-helm-test"
    key    = "infrastate"
    region = "eu-west-1"
  }
}