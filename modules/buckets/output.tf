output "buckets" {
  value = {
    for bucket in google_storage_bucket.bucket : bucket.id => {
      name      = bucket.name,
      url       = bucket.url,
      self_link = bucket.self_link,
      project   = bucket.project
    }
  }
}
