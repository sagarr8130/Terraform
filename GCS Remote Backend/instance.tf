provider "google" {
  project = "analysis-project-273210"
  credentials = "account.json"
  region = "us-central1"
}

resource "google_compute_instance" "Compute_Engine" {
  name = "terraform-machine2"
  zone = "us-central1-b"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "rhel-7-v20200403"
      type = "pd-standard"
      size = 20
    }
    auto_delete = true
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = ""
   }
  }
}