terraform {
  backend "s3" {
    bucket         = "<bucket name>"
    key            = "recipe-app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "recipe-app-api-devops-tf-state-lock"
  }
}
provider "aws" {
  region = "us-east-1"
  version = "~> 2.50.0"
}
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  commom_tags = {
      Environment = terraform.workspace
      Project     = var.project
      Owner       = var.contact
      Managed By  = "Teraform"
  }
}

data "aws_region" "current"{}
