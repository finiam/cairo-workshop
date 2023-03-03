use cairo_workshop::ex1;

#[ignore]
#[test]
fn test_var() {
    let expected_value = 42;

    assert(ex1::var() == expected_value, 'not the expected value');
}

#[ignore]
#[test]
fn test_sum() {
    let input = 0;
    let expected_value = 42 - input;

    assert(ex1::sum(input) == expected_value, 'not the expected value');
}

#[ignore]
#[test]
fn test_even() {
    let input: u8 = 2_u8;

    assert(ex1::even(input) == true, 'not the expected_value');
}

#[ignore]
#[test]
fn test_odd() {
    let input: u8 = 3_u8;

    assert(ex1::even(input) == false, 'not the expected_value');
}
