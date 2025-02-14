terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "storingstate"
    key            = "statefilerm" #state file will be saved as statefilerm in this bucket
    region         = "us-east-1"
    dynamodb_table = "storingstate"
  }
}

provider "aws" {
  region = "us-east-1"
}