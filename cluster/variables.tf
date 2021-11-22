variable gcp_project_id {
  default = "terraform-k8s-gke-traefik-demo"
}

variable gcp_project_name {
  default = "Demo Terraform k8s GKE traefik"
}

variable "gcp_billing_accpint_name" {
  default = "Mein Rechnungskonto"
}

variable network_name {
  default = "tf-gke-k8s"
}

variable "project_name" {
  default = "Demo Terraform k8s GKE traefik"
}

variable "project_id" {
  default = "free-tier-1"
}

variable "region" {
  default = "us-east1"
}

variable "zone" {
  default = "us-east1-b"
}

variable "cluster" {
  default = "cicd-tf-gke-k8s"
}

variable "credentials" {
  default = "~/.config/gcloud/sa-terraform.free-tier-1.json"
}

variable "machine_type" {
    default = "e2-small"
}

variable "preemtible" {
    default = true
}

variable "kubernetes_min_ver" {
  default = "latest"
}

variable "kubernetes_max_ver" {
  default = "latest"
}

variable "app_name" {
  default = "test"
}