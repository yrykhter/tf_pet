module "vm_for_env" {
  instance_name = "${var.env}${var.instance_name}"
  instance_type = var.instance_type
  env           = var.env
  source        = "./modules/vm"
  gc_project    = var.gc_project
  gc_region     = var.gc_region
}
