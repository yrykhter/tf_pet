data "google_project" "project" {}

provider "google" {
  project = var.gc_project
  region  = var.gc_region
}
