/******************************
# Variables to be used with the infrastructure code
******************************/

variable "bucket_name" {
  description = "List of bucket names"
  type        = list(string)
}

variable "gc_project" {
  description = "Project"
  type        = string
}

variable "gc_region" {
  description = "Region"
  type        = string
}
