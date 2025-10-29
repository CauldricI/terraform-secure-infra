variable "bucket_name" {
  description = "Unique S3 bucket name"
  type        = string
}

variable "kms_key_id" {
  description = "Optional KMS key id/arn for SSE-KMS; if null uses AES256"
  type        = string
  default     = null
}
