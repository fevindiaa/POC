
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

  config = {
    "security.protocol"        = "SSL"
    "ssl.ca.location"          = "${path.module}/certs/ca.crt"
    "ssl.certificate.location" = "${path.module}/certs/client.crt"
    "ssl.key.location"         = "${path.module}/certs/client.key"
  }
}
