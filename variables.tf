variable "compute_id" {
  description = "Compute instance ID to snapshot"

  type = string

  validation {
    condition     = length(trim(var.compute_id, " ")) > 0
    error_message = "compute_id cannot be empty."
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9-]+$", var.compute_id))
    error_message = "compute_id contains invalid characters."
  }
}