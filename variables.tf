# Required
variable "key_vault_id" {
  type        = string
  description = "The ID of the Key Vault where the Secret should be created"
}

# Optional
variable "secrets" {
  type        = map(any)
  description = "Key-value pairs of secrets to be created in the Key Vault"
  default     = {"password"="54gdJJ98lFjh"}
}

variable "secrets_ignore_changes" {
  type        = map(any)
  description = "Key-value pairs of secrets ignored changes to be created in the Key Vault"
  default     = {}
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
