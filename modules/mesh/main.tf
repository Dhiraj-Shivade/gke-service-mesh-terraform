resource "google_gke_hub_feature" "servicemesh" {

  provider = google-beta

  project  = var.project_id
  location = "global"

  name = "servicemesh"

  fleet_default_member_config {
    mesh {
      management = "MANAGEMENT_AUTOMATIC"
    }
  }
}