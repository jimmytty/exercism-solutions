<?php

declare(strict_types=1);

class ResistorColorTrio
{
    public function label(array $colors): string
    {
        $tr = [
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
        ];
        $conv = [
            ['giga', 1e9],
            ['mega', 1e6],
            ['kilo', 1e3],
        ];

        $value = (
            $tr[$colors[0]] * 10 + $tr[$colors[1]]
        ) * 10 ** $tr[$colors[2]];
        $unit = 'ohms';

        foreach ( $conv as $c ) {
            if ( $value > $c[1] ) {
                $unit = $c[0] . $unit;
                $value /= $c[1];
                break;
            }
        }
        $string = "$value $unit";

        return $string;
    }
}
