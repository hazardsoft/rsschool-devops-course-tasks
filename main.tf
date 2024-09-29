terraform {
  backend "s3" {
    bucket  = "rsschool-devops-tfstates"
    key     = "state/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-central-1"
}