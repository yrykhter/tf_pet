variable "gc_project" {
  description = "Project"
  type        = string
  default     = "your-project"
}

variable "gc_region" {
  description = "Region"
  type        = string
  default     = "us-central1"
}

variable "env" {
  description = "Environments"
  type        = string
  default     = "qa"
}
