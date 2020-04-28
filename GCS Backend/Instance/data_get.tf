data "terraform_remote_state" "myvm" {
  backend = "gcs"
  config = {
    bucket = "new-bucket-terraform"
    credentials = "/root/account.json"
    prefix = "network.tfstate"
  }
}