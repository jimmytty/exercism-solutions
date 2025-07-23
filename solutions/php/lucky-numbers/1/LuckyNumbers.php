<?php

class LuckyNumbers
{
    public function sumUp(array $digitsOfNumber1, array $digitsOfNumber2): int
    {
        $digits1 = (int) join('', $digitsOfNumber1);
        $digits2 = (int) join('', $digitsOfNumber2);
        return $digits1 + $digits2;
    }

    public function isPalindrome(int $number): bool
    {
        $rebmun = (int) strrev((string) $number);
        return $number == $rebmun;
    }

    public function validate(string $input): string
    {
        if ( $input == '' ) { return 'Required field'; }
        if ( (int) $input <= 0 ) {
            return 'Must be a whole number larger than 0';
        }
        return '';
    }
}
