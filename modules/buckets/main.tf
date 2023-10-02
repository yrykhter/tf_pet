resource "google_storage_bucket" "bucket" {

  for_each      = toset(var.bucket_name)
  name          = each.value
  location      = var.gc_region
  project       = var.gc_project
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  public_access_prevention = "enforced"
}
