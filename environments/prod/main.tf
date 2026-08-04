module "network" {
  source = "../../modules/network"

  project_id          = var.project_id
  region              = var.region
  network_name        = var.network_name
  subnet_name         = var.subnet_name
  subnet_cidr         = var.subnet_cidr
  pods_range_name     = var.pods_range_name
  pods_cidr           = var.pods_cidr
  services_range_name = var.services_range_name
  services_cidr       = var.services_cidr
  router_name         = var.router_name
  nat_name            = var.nat_name
}

module "gke" {
  source = "../../modules/gke"

  project_id          = var.project_id
  region              = var.region
  cluster_name        = var.cluster_name
  release_channel     = var.release_channel
  deletion_protection = var.deletion_protection

  network    = module.network.network_name
  subnetwork = module.network.subnet_name

  pods_range_name     = var.pods_range_name
  services_range_name = var.services_range_name
}

module "fleet" {
  source = "../../modules/fleet"

  project_id   = var.project_id
  cluster_name = module.gke.cluster_name
  location     = var.region
}

resource "time_sleep" "wait_for_fleet" {

  depends_on = [
    module.fleet
  ]

  create_duration = "3m"
}

module "mesh" {

  source = "../../modules/mesh"

  depends_on = [
    time_sleep.wait_for_fleet
  ]

  project_id = var.project_id

  membership_id = module.gke.cluster_name

  membership_location = var.region

}