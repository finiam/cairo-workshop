#[derive(Copy, Drop)]
struct RGB {
    red: u8,
    green: u8,
    blue: u8,
}

#[derive(Copy, Drop)]
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
  fn is_red(self: T) -> bool;
  fn is_blue(s: T) -> bool;
  fn is_green(self: @T) -> bool;
  fn is_magenta(s: @T) -> bool;
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
        RGB { red: 255_u8, green: 0_u8, blue: 255_u8 }
    }
    fn yellow() -> RGB {
        RGB { red: 255_u8, green: 255_u8, blue: 0_u8 }
    }
    fn is_red(self: RGB) -> bool {
        self.red == 255_u8 & self.green == 0_u8 & self.blue == 0_u8
    }
    fn is_blue(s: RGB) -> bool {
        s.red == 0_u8 & s.blue == 255_u8 & s.green == 0_u8
    }
    fn is_green(self: @RGB) -> bool {
        *self.red == 0_u8 & *self.green == 255_u8 & *self.blue == 0_u8
    }
    fn is_magenta(s: @RGB) -> bool {
        *s.red == 255_u8 & *s.green == 0_u8 & *s.blue == 255_u8
    }
}

impl CMYKImpl of ColorModelTrait::<CMYK> {
    fn new() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 0_u8, yellow: 0_u8, black: 0_u8 }
    }
    fn cyan() -> CMYK {
        CMYK { cyan: 100_u8, magenta: 0_u8, yellow: 0_u8, black: 0_u8 }
    }
    fn magenta() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 100_u8, yellow: 0_u8, black: 0_u8 }
    }
    fn yellow() -> CMYK {
        CMYK { cyan: 0_u8, magenta: 0_u8, yellow: 100_u8, black: 0_u8 }
    }
    fn is_red(self: CMYK) -> bool {
        self.cyan == 0_u8 & self.magenta == 100_u8 & self.yellow == 100_u8 & self.black == 0_u8
    }
    fn is_blue(s: CMYK) -> bool {
        s.cyan == 100_u8 & s.magenta == 100_u8 & s.yellow == 0_u8 & s.black == 0_u8
    }
    fn is_green(self: @CMYK) -> bool {
        *self.cyan == 100_u8 & *self.magenta == 0_u8 & *self.yellow == 100_u8 & *self.black == 0_u8
    }
    fn is_magenta(s: @CMYK) -> bool {
        *s.cyan == 0_u8 & *s.magenta == 100_u8 & *s.yellow == 0_u8 & *s.black == 0_u8
    }
}
