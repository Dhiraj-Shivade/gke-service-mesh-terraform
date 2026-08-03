output "network_name" {

  value = google_compute_network.vpc.name

}

output "network_self_link" {

  value = google_compute_network.vpc.self_link

}

output "subnet_name" {

  value = google_compute_subnetwork.private.name

}

output "subnet_self_link" {

  value = google_compute_subnetwork.private.self_link

}