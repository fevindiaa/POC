variable "bootstrap_servers" {
  type        = string
  description = "MSK bootstrap servers"
}

variable "ca_cert_path" {
  type        = string
  description = "Path to CA cert"
}

variable "client_cert_path" {
  type        = string
  description = "Path to client cert"
}

variable "client_key_path" {
  type        = string
  description = "Path to client key"
}

