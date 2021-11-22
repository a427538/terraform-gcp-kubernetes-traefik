# Setup GKE Cluster
resource "google_container_cluster" "default" {
  name               = var.cluster
  location           = var.zone
  initial_node_count = 1

  master_auth {
    # username = ""
    # password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_version = data.google_container_engine_versions.default.latest_node_version
  min_master_version = data.google_container_engine_versions.default.latest_node_version
  network            = google_compute_subnetwork.default.name
  subnetwork         = google_compute_subnetwork.default.name

  node_config {
    machine_type = var.machine_type
    preemptible  = var.preemtible
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      app = var.app_name
    }
    
    tags = ["app", var.app_name]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }

}

output cluster_zone {
  value = google_container_cluster.default.location
}

output client_certificate {
  value = google_container_cluster.default.master_auth.0.client_certificate
}

output client_key {
  value = google_container_cluster.default.master_auth.0.client_key
}

output cluster_ca_certificate {
  value = google_container_cluster.default.master_auth.0.cluster_ca_certificate
}

output cluster_instance_groups {
  value = google_container_cluster.default.node_pool[0].instance_group_urls
}

output cluster_name {
  value = google_container_cluster.default.name
}
