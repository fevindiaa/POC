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
  ca_cert         = file("./certs/ca.pem")
  client_cert     = file("./certs/client.crt")
  client_key      = file("./certs/client.key")
}

