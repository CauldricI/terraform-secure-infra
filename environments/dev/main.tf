terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 5.0" }
  }
  backend "local" {}
}

provider "aws" {
  region = var.aws_region
}

module "secure_bucket" {
  source      = "../../modules/aws-secure-s3"
  bucket_name = var.bucket_name
  kms_key_id  = null # set to KMS key id if you have one
}

module "ecr" {
  source = "../../modules/aws-ecr-with-scan"
  name   = var.ecr_name
}
