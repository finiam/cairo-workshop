use cairo_workshop::ex2;

#[test]
#[available_gas(2000000)]
fn test_fib0() {
  let input = 0_u64;
  let expected_value = 0_u64;

  assert(ex2::fibonacci(input) == expected_value, 'not the expected value');
}

#[test]
#[available_gas(2000000)]
fn test_fib1() {
  let input = 1_u64;
  let expected_value = 1_u64;

  assert(ex2::fibonacci(input) == expected_value, 'not the expected value');
}

#[test]
#[available_gas(2000000)]
fn test_fib10() {
  let input = 10_u64;
  let expected_value = 55_u64;

  assert(ex2::fibonacci_tail_recursive(input) == expected_value, 'not the expected value');
}
