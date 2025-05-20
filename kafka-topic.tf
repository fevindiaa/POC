
resource "kafka_topic" "orders" {
  name               = "poc-topic"
  partitions         = 3
  replication_factor = 2
}
