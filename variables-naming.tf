variable "custom_name" {
  description = "Optional custom resource group name"
  type        = string
  default     = ""
}

variable "workload_info" {
  description = "Workload additional info to be used in the resource name"
  type        = string
  default     = ""
}

variable "landing_zone_slug" {
  description = "Landing Zone, subscription, acronym. It will be used to generate the resource name"
  type        = string
}

