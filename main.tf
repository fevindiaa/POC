
terraform {
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = "0.9.0"
    }
  }
}

provider "kafka" {
  bootstrap_servers = ["boot-dxp692ko.c3.kafka-serverless.eu-north-1.amazonaws.com:9098"]
  tls_enabled       = true
  tls_ca_cert       = file("${path.module}/certs/ca.crt")
  tls_cert          = file("${path.module}/certs/client.crt")
  tls_key           = file("${path.module}/certs/client.key")
  skip_tls_verify   = false
}
