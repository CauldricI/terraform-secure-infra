variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name (must be globally unique)"
  type        = string
}

variable "ecr_name" {
  description = "ECR repository name"
  type        = string
  default     = "demoapp"
}
