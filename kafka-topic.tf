
resource "kafka_topic" "orders" {
  name               = "orders"
  partitions         = 3
  replication_factor = 2
}
