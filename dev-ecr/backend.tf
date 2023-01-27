terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "ecr.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  }
