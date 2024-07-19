variable "resource_group" {
  description = "The name of the resource group to create"
  type        = string
}

variable "region" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "base_domain" {
  description = "The base domain for the cluster"
  type        = string
}
