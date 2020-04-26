terraform {
  backend "gcs" {
    bucket = "new-bucket-terraform"
    credentials = "account.json"
    path = "terraform.tfstate"
  }
}