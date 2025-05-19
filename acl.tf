resource "kafka_acl" "poc" {
  resource_name        = "poc-topic"
  resource_type        = "topic"
  acl_principal        = "User:CN=client"
  acl_host             = "*"
  acl_operation        = "Read"
  acl_permission_type  = "Allow"
}

