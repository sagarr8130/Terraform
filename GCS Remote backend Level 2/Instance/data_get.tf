data "terraform_remote_state" "myvm" {
  backend = "gcs"
  config = {
    bucket = "new-bucket-terraform"
    credentials = "account.json"
    prefix = "terraform.tfstate"
  }
}