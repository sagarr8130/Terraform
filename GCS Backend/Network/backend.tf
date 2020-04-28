terraform {
  backend "gcs" {
    bucket = "new-bucket-terraform"
    credentials = "/root/account.json"
    prefix = "network.tfstate"
  }
}