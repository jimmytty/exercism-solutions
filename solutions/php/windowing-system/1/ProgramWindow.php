<?php

class ProgramWindow
{
    public $x;
    public $y;
    public $width;
    public $height;

    function __construct($x = 0, $y = 0, $width = 800, $height = 600) {
        $this->x      = $x;
        $this->y      = $y;
        $this->width  = $width;
        $this->height = $height;
    }

    public function resize($Size) {
        $this->height = $Size->height;
        $this->width  = $Size->width;
    }

    public function move($Position) {
        $this->x = $Position->x;
        $this->y = $Position->y;
    }

}
