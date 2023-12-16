variable "user_uuid" {
  description = "The UUID of the user"
  type        = string
  validation {
    condition     = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.user_uuid))
    error_message = "The user_uuid must be in UUID format (example: 123e4567-e89b-12d3-a456-426614174000)."
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string

  validation {
    condition     = can(regex("^([a-z0-9]+(-[a-z0-9]+)*)(\\.[a-z0-9]+(-[a-z0-9]+)*)*$", var.bucket_name)) && length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    error_message = "The bucket name must be a valid S3 bucket name: lowercase letters, numbers, and hyphens, between 3 and 63 characters."
  }
}

variable "index_html_filepath" {
  description = "The file path for index.html"
  type        = string

  validation {
    condition     = fileexists(var.index_html_filepath)
    error_message = "The provided path for index.html does not exist"
  }
}

variable "error_html_filepath" {
  description = "The file path for error.html"
  type        = string

  validation {
    condition     = fileexists(var.error_html_filepath)
    error_message = "The provided path for error.html does not exist"
  }
}

variable "content_version" {
  description = "The version of the content, must be a positive integer starting from 1"
  type        = number

  validation {
    condition     = var.content_version > 0 && var.content_version == floor(var.content_version)
    error_message = "The content_version must be a positive integer starting from 1."
  }
}
