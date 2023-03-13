use cairo_workshop::ex3;
use cairo_workshop::ex3::RGB;
use cairo_workshop::ex3::CMYK;
use cairo_workshop::ex3::ColorModelTrait;

#[ignore]
#[test]
fn test_rgb() {
    // TODO: Initialize a variable with your favourite color
    // let my_favourite_color = RGB { ... };

    // TODO: Call the favourite_color function from the ColorModelTrait for the RGB struct
    //       Remember to add the function to the trait and to implement it
    //       for both color model structs
    // let favourite_color = ColorModelTrait::<RGB>::favourite_color();

    // TODO: Uncomment the following assert
    // assert(my_favourite_color == favourite_color, 'not implemented');
}

#[test]
fn test_colors() {
  let red = RGB { red: 255_u8, green: 0_u8, blue: 0_u8 };
  let blue = RGB { red: 0_u8, green: 0_u8, blue: 255_u8 };
  let green = RGB { red: 0_u8, green: 255_u8, blue: 0_u8 };

  let magenta = CMYK { cyan: 0_u8, magenta: 100_u8, yellow: 0_u8, black: 0_u8 };

  assert(red.is_red(), 'not red');
  assert(ColorModelTrait::<RGB>::is_blue(blue), 'not blue');
  assert((@green).is_green(), 'not green');

  assert(ColorModelTrait::<CMYK>::is_magenta(@magenta), 'not magenta');
}
