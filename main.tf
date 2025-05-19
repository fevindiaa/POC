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
  tls_ca_cert       = file(var.ca_cert_path)
  tls_cert          = file(var.client_cert_path)
  tls_key           = file(var.client_key_path)
}
