terraform {
  required_version = ">= 1.5.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.75"
    }
  }
}
