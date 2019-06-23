package uk.co.ameth.kafka.producer

import java.util.Properties

import org.apache.kafka.clients.producer.{KafkaProducer, ProducerRecord}

object Producer {

  def main(args: Array[String]): Unit = {
    val producer = new Producer()
    producer.run()
  }

}

class Producer {

  def run(): Unit = {
    val props = new Properties()
    props.put("bootstrap.servers", "localhost:9092")
    props.put("acks", "all")
    props.put("retries", "0")
    props.put("batch.size", "16384")
    props.put("linger.ms", "1")
    props.put("buffer.memory", "33554432")
    props.put("key.serializer", "org.apache.kafka.common.serialization.LongSerializer")
    props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer")
    val producer = new KafkaProducer[Long, String](props)

    val TOPIC = "fibonacci-topic"

    val fibonacci = new Fibonacci()
    val timeZero = System.currentTimeMillis()

    println("Starting producer 2 target:"+props.getProperty("bootstrap.servers"))
    for( i<- 1 to 5000 * 1000) {
      val value = fibonacci.fib3(i).toString()
      println (", sending "+value)
      val timestamp = System.currentTimeMillis() - timeZero
      val producerRecord = new ProducerRecord(TOPIC, timestamp, value)
      val result = producer.send(producerRecord)
//      println(result.get)
      Thread.sleep(1000)
    }
  }

}
