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