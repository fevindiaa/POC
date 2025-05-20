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

  # TLS settings as top-level arguments:
  security_protocol = "SSL"
  tls_ca_cert       = var.ca_cert_path
  tls_cert          = var.client_cert_path
  tls_key           = var.client_key_path
}
