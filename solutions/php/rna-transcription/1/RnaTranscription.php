<?php

declare(strict_types=1);

function toRna(string $dna): string
{
    $tr = [
        'G' => 'C',
        'C' => 'G',
        'T' => 'A',
        'A' => 'U',
    ];
    $rna = '';
    foreach ( str_split($dna, 1) as $char ) {
        $rna .= $tr[$char];
    }

    return $rna;
}
