output "diskname" {
  value = google_compute_disk.disk.name
}

output "networkname" {
  value = google_compute_network.vpc.name
}

output "subnetworkname" {
  value = google_compute_subnetwork.new-subnet.name
}

output "firewall" {
  value = google_compute_firewall.fwl.name
}