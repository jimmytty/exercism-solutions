<?php

class PizzaPi {
    public function calculateDoughRequirement($pizzas, $persons) {
        return $pizzas * ($persons * 20 + 200);
    }

    public function calculateSauceRequirement($pizzas, $sauce_can_volume) {
        return $pizzas * 125 / $sauce_can_volume;
    }

    public function calculateCheeseCubeCoverage(
        $cheese_dimension, $thickness, $diameter
    ) {
        return intval($cheese_dimension ** 3 / ($thickness * pi() * $diameter));
    }

    public function calculateLeftOverSlices($pizzas, $friends) {
        return $pizzas * 8 % $friends;
    }
}
