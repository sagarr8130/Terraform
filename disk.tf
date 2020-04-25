provider "google" {
  project = "analysis-project-273210"
  credentials = file("account.json")
  region = "europe-west2"
}


resource "google_compute_disk" "disk" {
  name = "disk"
  description = "External persistent-ssd disk"
  type = var.my_var_2
  zone = "europe-west2-b"
  size = var.my_var
  labels = {
    environment = "dev"
  }
}
