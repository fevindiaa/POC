
terraform {
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = "0.4.6"
    }
  }
}

provider "kafka" {
  bootstrap_servers = ["b-1.mskcluster.amazonaws.com:9094"]
  tls_enabled       = true
  tls_ca_cert       = file("${path.module}/certs/ca.crt")
  tls_cert          = file("${path.module}/certs/client.crt")
  tls_key           = file("${path.module}/certs/client.key")
  skip_tls_verify   = false
}
