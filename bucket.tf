locals {
  buckets_list = [
    "${var.env}-tf-bucket1",
    "${var.env}-tf-bucket2"
  ]
}


module "buckets_for_env" {
  bucket_name = local.buckets_list
  source      = "./modules/buckets"
  gc_project  = var.gc_project
  gc_region   = var.gc_region
}
