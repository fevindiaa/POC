
resource "kafka_acl" "admin_write_orders" {
  resource_name       = kafka_topic.orders.name
  resource_type       = "Topic"
  acl_principal       = "User:admin"
  acl_host            = "*"
  acl_operation       = "Write"
  acl_permission_type = "Allow"
}
