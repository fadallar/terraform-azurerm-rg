variable "default_tags_enabled" {
  description = "Option to enable or disable default tags."
  type        = bool
  default     = true
}

variable "extra_tags" {
  description = "Extra tags to add."
  type        = map(string)
  default     = {}
}

variable "costcenter" {
  description = "Cost Center Tag Value used for Cost Allocation"
  type        = string
  default     = ""

}

variable "spoc" {
   description = "SPOC Tag Value  used for Cloud Financial Management"
   type        = string
   default     = ""
}

variable "owner" {
  description = "Owner Tag Value. Worklaod's Technical Owner"
   type        = string
   default     = ""

}

variable "change" {
  description = "SNOW Change request"
   type        = string
   default     = ""
}