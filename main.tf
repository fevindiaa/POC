terraform {
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = "0.9.0"
    }
  }
}

provider "kafka" {
  bootstrap_servers = ["boot-xf196i8y.c3.kafka-serverless.eu-north-1.amazonaws.com:9098"]

  tls_enabled     = true
  ca_cert         = file(var.ca_cert_path)
  client_cert     = file(var.client_cert_path)
  client_key      = file(var.client_key_path)
}


