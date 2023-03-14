use cairo_workshop::ex3;
use cairo_workshop::ex3::Triangle;
use cairo_workshop::ex3::Circle;
use cairo_workshop::ex3::Shape;

#[test]
fn area_triangle_test() {
  let triangle = Triangle { base: 2_u64, height: 3_u64, b: 3_u64, c: 4_u64 };

  assert(triangle.area() == 3_u64, 'not valid');
  assert(triangle.perimeter() == 9_u64, 'not valid');
}

#[test]
fn area_circle_test() {
  let circle = Circle {radius: 1_u64};

  assert(circle.area() == 3_u64, 'not valid');
  assert(circle.perimeter() == 6_u64, 'not valid');
}
