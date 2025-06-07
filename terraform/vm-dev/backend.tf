terraform {
  backend "s3" {
    bucket         = "fmshr-tfe-statefile-bucket"
    key            = "vm/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
