
resource "kafka_topic" "orders" {
  name               = "topic"
  partitions         = 3
  replication_factor = 2
}
