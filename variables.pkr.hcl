variable "VAULTVERSION" {
  type        = string
  default     = "1.15.5+ent"
  description = "Version of App deployed"
}

variable "client_id" {
  type        = string
  description = "client_id for authenticating against Azure"
  default     = null
}

variable "client_secret" {
  type        = string
  description = "client_secret for authenticating against Azure"
  default     = null
}

variable "subscription_id" {
  type        = string
  description = "subscription_id for authenticating against Azure"
  default     = null
}

variable "tenant_id" {
  type        = string
  description = "tenant_id for authenticating against Azure"
  default     = null
}
variable "azure_cli_auth" {
  type        = bool
  description = "Use local Azure CLI credentials"
  default     = true
}