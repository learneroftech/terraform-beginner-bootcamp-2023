variable "user_uuid" {
  type        = string
  description = "The UUID of the user"

  validation {
    condition     = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.user_uuid))
    error_message = "The user_uuid must be in UUID format (example: 123e4567-e89b-12d3-a456-426614174000)."
  }
}
