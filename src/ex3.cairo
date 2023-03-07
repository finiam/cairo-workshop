#[derive(Copy, Drop)]
struct RGB {
    red: u8,
    green: u8,
    blue: u8,
}

struct CMYK {
    cyan: u8,
    magenta: u8,
    yellow: u8,
    black: u8,
}

trait ColorModelTrait<T> {
    fn new() -> T;
    fn cyan() -> T;
    fn magenta() -> T;
    fn yellow() -> T;
}

impl RGBPartialEq of PartialEq::<RGB> {
    fn eq(a: RGB, b: RGB) -> bool {
        a.red == b.red & a.green == b.green & a.blue == b.blue
    }

    fn ne(a: RGB, b: RGB) -> bool {
        !(a.red == b.red & a.green == b.green & a.blue == b.blue)
    }
}

impl RGBImpl of ColorModelTrait::<RGB> {
    fn new() -> RGB {
        RGB { red: 0_u8, green: 0_u8, blue: 0_u8 }
    }
    fn cyan() -> RGB {
        RGB { red: 0_u8, green: 255_u8, blue: 255_u8 }
    }
    fn magenta() -> RGB {
        RGB { red: 0_u8, green: 255_u8, blue: 255_u8 }
    }
    fn yellow() -> RGB {
        RGB { red: 0_u8, green: 255_u8, blue: 255_u8 }
    }
}

impl CMYKImpl of ColorModelTrait::<CMYK> {
    fn new() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 0_u8, yellow: 0_u8, black: 0_u8 }
    }
    fn cyan() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 255_u8, yellow: 255_u8, black: 0_u8 }
    }
    fn magenta() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 255_u8, yellow: 255_u8, black: 0_u8 }
    }
    fn yellow() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 255_u8, yellow: 255_u8, black: 0_u8 }
    }
}
