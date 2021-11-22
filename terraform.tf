terraform {
  required_version = "~>1.0.10"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.1.0"
    }
  }
  backend "gcs" {
    bucket  = "free-tier-1-tf-state"
    prefix  = "terraform/state"
  }  
}