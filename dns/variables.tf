variable "resource_group" {
  description = "The name of the resource group to create"
  type        = string
}

variable "region" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "top_level_domain_name" {
  description = "The top level domain name to create"
  type        = string
}
