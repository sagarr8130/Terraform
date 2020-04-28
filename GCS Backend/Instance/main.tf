provider "google" {
  project = "analysis-project-273210"
  credentials = file("/root/account.json")
  region = "europe-west2"
}


resource "google_compute_instance" "Compute_Engine" {
  name = "terraform-machine2"
  labels = {
    env = "prod"
    cluster = "npr"
  }
  zone = "europe-west2-b"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "rhel-7-v20200403"
      type = "pd-standard"
      size = 20
      labels = {
        os = "redhat-disk"
        size = "20"
      }
    }
    auto_delete = true
    device_name = "my-boot-disk"
  }

  attached_disk {
    source = data.terraform_remote_state.myvm.outputs.diskname
    mode = "READ_ONLY"
    device_name = "pd-ssd-disk"
  }

  network_interface {
    network = data.terraform_remote_state.myvm.outputs.networkname
    subnetwork = data.terraform_remote_state.myvm.outputs.subnetworkname
    network_ip = "10.130.0.10"
    access_config {
      nat_ip = ""
   }
  }
}