resource "google_compute_instance" "vm" {
  project      = var.gc_project
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.gc_region

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        environment = var.label
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"
  }
}
