# terraform-secure-infra

Secure-by-default Terraform examples for AWS:
- Encrypted, private S3 bucket with bucket policy, TLS-only, object-lock (optional)
- ECR repository with scanning on push + immutable tags
- CI workflow to run `fmt`, `init`, `validate`, and `tfsec` (IaC security)

## Quick Start (dev)
```bash
cd environments/dev
terraform init
terraform plan -var-file=terraform.tfvars.example
# copy terraform.tfvars.example → terraform.tfvars and adjust values, then:
terraform apply
