terraform {
  backend "gcs" {
    bucket = "new-bucket-terraform"
    credentials = "account.json"
    prefix = "terraform.tfstate"
  }
}