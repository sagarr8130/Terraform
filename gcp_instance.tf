provider "google" {
  project = "analysis-project-273210"
  credentials = file("account.json")
  region = "europe-west2"
}


resource "google_compute_disk" "disk" {
  name = "disk"
  description = "This is my first external persistent-ssd disk"
  type = "pd-ssd"
  zone = "europe-west2-b"
  size = 40
  labels = {
    environment = "dev"
  }
}


resource "google_compute_network" "vpc" {
  name = "private-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "new-subnet" {
  name = "subnet-1"
  region = "europe-west2"
  ip_cidr_range = "10.130.0.0/20"
  network = google_compute_network.vpc.self_link
  private_ip_google_access = false
}

resource "google_compute_firewall" "fwl" {
  name = "default-allow-8080-240"
  description = "firewall for Jenkins"
  network = google_compute_network.vpc.self_link
  direction = "INGRESS"
  allow {
    protocol = "tcp"
    ports = [8080,240]
  }
  source_tags = ["allow-tcp-8080"]
  source_ranges = ["0.0.0.0/0"]
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
    source = google_compute_disk.disk.self_link
    mode = "READ_ONLY"
    device_name = "pd-ssd-disk"
  }

  network_interface {
    network = google_compute_network.vpc.self_link
    subnetwork = google_compute_subnetwork.new-subnet.self_link
    network_ip = "10.130.0.10"
    access_config {
      nat_ip = ""
   }
  }
}
