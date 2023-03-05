### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "layer-testing.tfstate"
    region = "us-east-1"
  }
}
