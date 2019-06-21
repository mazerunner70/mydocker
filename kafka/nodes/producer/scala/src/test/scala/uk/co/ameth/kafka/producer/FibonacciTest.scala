package uk.co.ameth.kafka.producer

class FibonacciTest extends org.scalatest.FlatSpec {

  "fibonacci test " should "work" in {
    val fibonacci = new Fibonacci()
    assert(fibonacci.fib3(0) == 0)
    assert(fibonacci.fib3(1) == 1)
    assert(fibonacci.fib3(2) == 1)
    assert(fibonacci.fib3(3) == 2)
    assert(fibonacci.fib3(13) == 233)
  }
}
