/******************************
# Variables to be used with the infrastructure code
******************************/

variable "gc_project" {
  description = "Project"
  type        = string
}

variable "gc_region" {
  description = "Region"
  type        = string
}

variable "instance_name" {}
variable "instance_type" {}
variable "label" {}
