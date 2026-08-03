resource "google_gke_hub_feature" "servicemesh" {
  provider = google-beta

  project  = var.project_id
  location = "global"
  name     = "servicemesh"
}

resource "google_gke_hub_feature_membership" "servicemesh_membership" {

  provider = google-beta

  project = var.project_id

  location = "global"

  feature = google_gke_hub_feature.servicemesh.name

  membership = var.membership_id


  mesh {

    management = "MANAGEMENT_AUTOMATIC"

  }

}