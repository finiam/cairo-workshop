use cairo_workshop::math;

#[test]
fn test_math() {
    assert(math::add(2, 3) == 5, 'invalid');
}
