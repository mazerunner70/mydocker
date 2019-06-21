package uk.co.ameth.kafka.producer

class Fibonacci {

  def fib3( n : Int) : Long = {
    def fib_tail( n: Int, a:Long, b:Long): Long = n match {
      case 0 => a
      case _ => fib_tail( n-1, b, a+b )
    }
    return fib_tail( n, 0, 1)
  }

}
