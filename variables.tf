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

variable "instance_name" {
  description = "Instance name"
  type        = string
  default     = "_vm"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "n2-standard-2"
}
