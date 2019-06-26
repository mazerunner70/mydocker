package uk.co.ameth.kafka.logger

object Logger {


  def main(args: Array[String]): Unit = {
    val consumer = new Consumer()
    consumer.topic = args(0)
    consumer.init()
    consumer.run()
  }


}
