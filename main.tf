terraform {
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = ">=0.9.0"
    }
  }
}

provider "kafka" {
  bootstrap_servers = [var.bootstrap_servers]

  config = {
    "security.protocol"        = "SSL"
    "ssl.ca.location"          = var.ca_cert_path
    "ssl.certificate.location" = var.client_cert_path
    "ssl.key.location"         = var.client_key_path
  }
}

