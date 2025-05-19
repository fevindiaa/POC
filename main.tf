terraform {
  required_providers {
    kafka = {
      source  = "mongey/kafka"
      version = "0.9.0"
    }
  }
}
provider "kafka" {
  bootstrap_servers = ["boot-dxp692ko.c3.kafka-serverless.eu-north-1.amazonaws.com:9098"]
}
