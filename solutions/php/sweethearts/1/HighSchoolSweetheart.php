<?php

class HighSchoolSweetheart {
    public function firstLetter(string $name): string  {
        return mb_substr(trim($name), 0, 1);
    }

    public function initial(string $name): string {
        return mb_strtoupper($this->firstLetter($name)) . '.';
    }

    public function initials(string $name): string {
        $words = explode(' ', $name);
        $ini   = [];
        foreach ( $words as $word ) {
            array_push($ini, $this->initial($word));
        }
        return implode(' ', $ini);
    }

    public function pair(string $sweetheart_a, string $sweetheart_b): string {
        // throw new \BadFunctionCallException("Implement the function");
        $a = $this->initials($sweetheart_a);
        $b = $this->initials($sweetheart_b);
        $c = $a . '  +  ' . $b;
        $heart = <<<EOT
             ******       ******
           **      **   **      **
         **         ** **         **
        **            *            **
        **                         **
        **     $c     **
         **                       **
           **                   **
             **               **
               **           **
                 **       **
                   **   **
                     ***
                      *
        EOT;
        return $heart;
    }
}
