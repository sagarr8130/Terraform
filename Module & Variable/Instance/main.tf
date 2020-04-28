provider "google" {
  project = "analysis-project-273210"
  credentials = file("account.json")
}

resource "google_compute_instance" "STG_Instance" {
  machine_type = var.machine_type_STG
  name = "terraform-machine-stg"
  zone = var.zone_STG
  boot_disk {
    initialize_params {
      image = "rhel-7-v20200403"
      type = "pd-standard"
      size = 20
    }
  }
  network_interface {
    network = "default"
  }
}

resource "google_compute_instance" "PRD_Instance" {
  machine_type = var.machine_type_PRD
  name = "terraform-machine-prd"
  zone = var.zone_PRD
  boot_disk {
    initialize_params {
      image = "rhel-7-v20200403"
      type = "pd-standard"
      size = 50
    }
  }
  network_interface {
    network = "default"
  }
}