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

impl TriangleImpl of Shape::<Triangle> {
  fn area(self: Triangle) -> u64 {
    (self.base * self.height) / 2_u64
  }

  fn perimeter(self: Triangle) -> u64 {
    self.base + self.b + self.c
  }
}

impl CircleImpl of Shape::<Circle> {
  fn area(self: Circle) -> u64 {
    3_u64 * self.radius * self.radius
  }

  fn perimeter(self: Circle) -> u64 {
    2_u64 * 3_u64 * self.radius
  }
}
