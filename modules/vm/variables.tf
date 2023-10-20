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

variable "instance_name" {
  description = "Instance name"
  type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}

variable "label" {
  description = "Label"
  type = string
}
