variable "arm_client_id" {
  description = "The Azure Service Principal client ID"
  type        = string
}

variable "arm_client_secret" {
  description = "The Azure Service Principal client secret"
  type        = string
}

variable "arm_tenant_id" {
  description = "The Azure Service Principal tenant ID"
  type        = string
}

variable "arm_subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "base_domain" {
  description = "The base domain for the cluster"
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "pull_secret" {
  description = "The pull secret for the cluster"
  type        = string
}
