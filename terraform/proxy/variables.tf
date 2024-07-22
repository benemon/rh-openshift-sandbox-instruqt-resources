variable "instruqt_sandbox_id" {
  description = "The Instruqt ID of the Sandbox session"
  type        = string
}

variable "public_api_ip" {
  description = "The public IP of the API server"
  type        = string
  default     = "127.0.0.1"
}

variable "public_router_ip" {
  description = "The public IP of the Router"
  type        = string
  default     = "127.0.0.1"
}
