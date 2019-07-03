package uk.co.ameth.kafka.logger

import java.util

import org.apache.kafka.clients.consumer.KafkaConsumer

import scala.jdk.CollectionConverters._


object Consumer {

}
class Consumer {
  var consumer: KafkaConsumer[Long, String] = null


  var topic = ""
  var groupId = ""

  def init(): Unit = {
    import java.util.Properties

    val props = new Properties()
    props.put("bootstrap.servers", "localhost:9092")

    props.put("key.deserializer", "org.apache.kafka.common.serialization.LongDeserializer")
    props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer")
    props.put("group.id", groupId)
    props.put("auto.offset.reset", "earliest")

    this.consumer = new KafkaConsumer[Long, String](props)

    consumer.subscribe(util.Collections.singletonList(topic))

  }

  def run(): Unit = {
    while (true) {
      val records = consumer.poll(100)
      for (record <- records.asScala) {
        println("logger:"+topic+"("+groupId+"): ("+record.key()+", "+record.value()+")")
      }
    }
  }
}
