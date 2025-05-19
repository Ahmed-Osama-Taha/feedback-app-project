terraform {
  backend "s3" {
    bucket = "backend-terraform-bucket1234"
    key    = "infra/terraform.tfstate"
    region = "us-east-1"     
    use_lockfile = true
    encrypt = true
  }
}
# This backend configuration uses an S3 bucket to store the Terraform state file.