terraform {
  backend "remote" {
    organization = "PaloAltoNetworks-PSO"

    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}

provider "google-beta" {
  project = var.google_project
  region  = var.region
  alias   = "google-beta"
}