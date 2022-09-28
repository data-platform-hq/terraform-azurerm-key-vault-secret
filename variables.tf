# Required
variable "key_vault_id" {
  type        = string
  description = "The ID of the Key Vault where the Secret should be created"
}

# Optional
variable "secrets" {
  type    = map(any)
  default = {}
}

variable "tags" {
  type        = map(any)
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

variable "default_expiration_date" {
  type        = string
  description = "Expiration UTC datetime (Y-m-d'T'H:M:S'Z')"
  default     = null
}
