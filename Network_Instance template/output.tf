output "disk" {
  value = google_compute_disk.disk.name
}

output "network" {
  value = google_compute_network.vpc.name
}

output "subnetwork" {
  value = google_compute_subnetwork.new-subnet.name
}


output "firewall" {
  value = google_compute_firewall.fwl.name
}

output "instance" {
  value = google_compute_instance.Compute_Engine.name
}