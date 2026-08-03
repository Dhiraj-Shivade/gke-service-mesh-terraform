resource "google_container_cluster" "autopilot" {

  provider = google-beta

  name     = var.cluster_name
  location = var.region
  project  = var.project_id

  enable_autopilot = true

  deletion_protection = var.deletion_protection

  network    = var.network
  subnetwork = var.subnetwork

  networking_mode = "VPC_NATIVE"

  ip_allocation_policy {

    cluster_secondary_range_name  = var.pods_range_name
    services_secondary_range_name = var.services_range_name

  }

  private_cluster_config {

    enable_private_nodes = true

    enable_private_endpoint = false

  }

  release_channel {

    channel = var.release_channel

  }

  workload_identity_config {

    workload_pool = "${var.project_id}.svc.id.goog"

  }

  fleet {

    project = var.project_id

  }

  master_authorized_networks_config {}

}