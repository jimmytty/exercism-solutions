#include "resistor_color.h"

int color_code( resistor_band_t color ) {
    return color;
}

int * colors() {
    static int colors[] = {
        BLACK,
        BROWN,
        RED,
        ORANGE,
        YELLOW,
        GREEN,
        BLUE,
        VIOLET,
        GREY,
        WHITE
    };
    return colors;
}
