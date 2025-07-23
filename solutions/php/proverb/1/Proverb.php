<?php

declare(strict_types=1);

class Proverb
{
    public function recite(array $pieces): array
    {
        if ( count($pieces) == 0 ) { return []; }

        $verses = array();
        for ( $i = 0; $i < count($pieces)-1; $i++ ) {
            $a = $pieces[$i];
            $b = $pieces[$i+1];
            $verse = "For want of a $a the $b was lost.";
            $verses[] = $verse;
        }
        $verses[] = "And all for the want of a $pieces[0].";
        
        return $verses;
    }

}
