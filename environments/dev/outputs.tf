output "bucket_name"       { value = module.secure_bucket.bucket_name  sensitive = false }
output "ecr_repository"    { value = module.ecr.name                   sensitive = false }
