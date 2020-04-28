provider "google" {
  project = "analysis-project-273210"
  credentials = file("/root/account.json")
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