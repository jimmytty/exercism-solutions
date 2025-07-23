<?php

declare(strict_types=1);

class ResistorColorDuo
{
    public function getColorsValue(array $colors): int
    {
        $band_colors = array(
            'black'  => 0,
            'brown'  => 1,
            'red'    => 2,
            'orange' => 3,
            'yellow' => 4,
            'green'  => 5,
            'blue'   => 6,
            'violet' => 7,
            'grey'   => 8,
            'white'  => 9,
        );
        $color1 = $band_colors[$colors[0]];
        $color2 = $band_colors[$colors[1]];
        return $color1 * 10 + $color2;
    }
}
