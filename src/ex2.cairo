fn fibonacci(value: felt) -> felt {
    if (value <= 1) {
      return value;
    }

    fibonacci(value - 1) + fibonacci(value - 2)
}

fn fibonacci_tail_recursive(value: felt) -> felt {
  fibonacci_internal(value, 0, 1)
}

fn fibonacci_internal(value: felt, fib1: felt, fib2: felt) -> felt {
  if (value == 0) {
    return fib1;
  }

  if (value == 1) {
    return fib2;
  }

  fibonacci_internal(value - 1, fib2, fib1 + fib2)
}

fn main() -> felt {
  // fibonacci(10)
  fibonacci_tail_recursive(100)
}
