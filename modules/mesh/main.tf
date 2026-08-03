resource "google_gke_hub_feature" "servicemesh" {
  provider = google-beta

  project  = var.project_id
  location = "global"
  name     = "servicemesh"
}