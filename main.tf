provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "tf-state-as-challengue-us-east-1-471112631123"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

