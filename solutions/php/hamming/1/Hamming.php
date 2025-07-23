<?php

declare(strict_types=1);

function distance(string $strandA, string $strandB): int {

    if ( strlen($strandA) != strlen($strandB) ) {
        $err_msg = "DNA strands must be of equal length.";
        throw new InvalidArgumentException($err_msg);
    }

    $arrayA = str_split($strandA);
    $arrayB = str_split($strandB);
    $count = 0;
    for ( $i = 0; $i < count($arrayA); $i++ ) {
        if ( $arrayA[$i] != $arrayB[$i] ) $count++;
    }

    return $count;
  }
