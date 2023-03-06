use cairo_workshop::ex3;
use cairo_workshop::ex3::RGB;
use cairo_workshop::ex3::ColorModelTrait;

#[test]
fn test_rgb() {
    let rgb = ColorModelTrait::<RGB>::favourite_color();
    let favourite_color = RGB{ red: 1_u8, green: 2_u8, blue: 3_u8 };

    assert(rgb == favourite_color, 'error');

    // assert(*rgb.red == *favourite_color.red, 'error');
    // assert(*rgb.green == *favourite_color.green, 'error');
    // assert(*rgb.blue == *favourite_color.blue, 'error');
}
