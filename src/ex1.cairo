fn var() -> felt {
    42
}

fn sum(value: felt) -> felt {
    value + 42
}

fn even(value: u8) -> bool {
  if value % 2_u8 == 0_u8 {
    true
  } else {
    false
  }
}
