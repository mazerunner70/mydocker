package uk.co.ameth.kafka.producer

class Fibonacci {

  def fib3( n : Int) : BigInt = {
    def fib_tail( n: Int, a:BigInt, b:BigInt): BigInt = n match {
      case 0 => a
      case _ => fib_tail( n-1, b, a+b )
    }
    return fib_tail( n, 0, 1)
  }

}
