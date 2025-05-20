variable "bootstrap_servers" {
  type        = string
  description = "boot-xf196i8y.c3.kafka-serverless.eu-north-1.amazonaws.com:9098"
}

variable "ca_cert_path" {
  type        = string
  description = "./cert/ca.crt"
}

variable "client_cert_path" {
  type        = string
  description = "./cert/client.crt"
}

variable "client_key_path" {
  type        = string
  description = "./cert/client.key"
}

