# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-jorge"
    key    = "state/igti/edc/mod4/terraform.tfstate"
    region = "us-east-1"
  }
}
