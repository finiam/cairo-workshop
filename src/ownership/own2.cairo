#[derive(Copy, Drop)]
struct RGB {
    red: u8,
    green: u8,
    blue: u8,
}

fn main() {
    let mut rgb = RGB { red: 0_u8, green: 0_u8, blue: 0_u8 };

    get_red(rgb);

    set_red(rgb);
}

fn get_red(rgb: RGB) -> u8 {
    rgb.red
}

fn set_red(rgb: RGB) {
    let red = 100_u8;
    rgb = RGB { red: red, green: 0_u8, blue: 0_u8 };
}
