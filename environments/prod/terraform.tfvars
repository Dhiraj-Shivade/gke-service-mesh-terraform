project_id = "uma-enhub"

region = "us-central1"

network_name = "kepler-vpc"

subnet_name = "kepler-private-subnet"

subnet_cidr = "10.60.4.0/22"

pods_range_name = "gke-pods"

pods_cidr = "10.100.8.0/20"

services_range_name = "gke-services"

services_cidr = "10.100.0.0/20"

cluster_name = "kepler-prod-gke"

release_channel = "REGULAR"

deletion_protection = true