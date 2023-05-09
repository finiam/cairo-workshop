use array::ArrayTrait;

fn fibonacci(value: u64) -> u64 {
    // Check if out of gas.
    // TODO Remove when automatically handled by compiler.
    match gas::withdraw_gas() {
        Option::Some(_) => {},
        Option::None(_) => {
            let mut data = ArrayTrait::new();
            data.append('OOG');
            panic(data);
        }
    }

  if (value <= 1_u64) {
    return value;
  }

  fibonacci(value - 1_u64) + fibonacci(value - 2_u64)
}

fn fibonacci_tail_recursive(value: u64) -> u64 {
  fibonacci_internal(value, 0_u64, 1_u64)
}

fn fibonacci_internal(value: u64, fib1: u64, fib2: u64) -> u64 {
  // Check if out of gas.
  // TODO Remove when automatically handled by compiler.
  match gas::withdraw_gas() {
    Option::Some(_) => {},
      Option::None(_) => {
        let mut data = ArrayTrait::new();
        data.append('OOG');
        panic(data);
      }
  }

  if (value == 0_u64) {
    return fib1;
  }

  if (value == 1_u64) {
    return fib2;
  }

  fibonacci_internal(value - 1_u64, fib2, fib1 + fib2)
}
