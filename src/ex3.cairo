trait Shape<T> {
  fn area(self: T) -> u64;
  fn perimeter(self: T) -> u64;
}

#[derive(Copy)]
struct Triangle {
  base: u64,
  height: u64,
  b: u64,
  c: u64,
}

#[derive(Copy)]
struct Circle {
  radius: u64,
}
