package uk.co.ameth.kafka.consumer

import java.util

import org.apache.kafka.clients.consumer.KafkaConsumer

import scala.jdk.CollectionConverters._


object Consumer {

  def main(args: Array[String]): Unit = {
    val producer = new Consumer(args(0))
    producer.run()
  }

}
class Consumer(groupiD: String) {

  def run(): Unit = {
    import java.util.Properties

    val TOPIC = "fibonacci-topic"

    val props = new Properties()
    props.put("bootstrap.servers", "localhost:9092")

    props.put("key.deserializer", "org.apache.kafka.common.serialization.LongDeserializer")
    props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer")
    props.put("group.id", groupiD)
    props.put("auto.offset.reset", "earliest")

    val consumer = new KafkaConsumer[Long, String](props)

    consumer.subscribe(util.Collections.singletonList(TOPIC))

    while (true) {
      val records = consumer.poll(100)
      for (record <- records.asScala) {
        println("Consumer("+groupiD+"):" + record.key + ", " + record.value)
      }
    }
  }
}
