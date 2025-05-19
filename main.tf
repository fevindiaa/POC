terraform {
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = ">=0.9.0"
    }
  }
}

provider "kafka" {
  bootstrap_servers = ["boot-wt1thek4.c2.kafka-serverless.eu-north-1.amazonaws.com:9098"]

  security_protocol = "SSL"
  tls_ca_cert       = file("${path.module}/msk-certs/ca.crt")
  tls_cert          = file("${path.module}/msk-certs/client.crt")
  tls_key           = file("${path.module}/msk-certs/client.key")
}


resource "kafka_topic" "my_topic" {
  name               = "my-topic"
  partitions         = 3
  replication_factor = 1
  config = {
    "cleanup.policy" = "compact"
  }
}

resource "kafka_acl" "my_acl" {
  resource_type        = "topic"
  resource_name        = kafka_topic.my_topic.name
  acl_principal        = "User:CN=my-kafka-client"
  acl_host             = "*"
  acl_operation        = "Read"
  acl_permission_type  = "Allow"
}
