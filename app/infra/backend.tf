terraform {
  backend "s3" {
    bucket = "k8-helm-test"
    key    = "appstate"
    region = "eu-west-1"
  }
}