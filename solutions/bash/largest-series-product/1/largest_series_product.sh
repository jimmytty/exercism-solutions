#!/usr/bin/env bash

main () {
    if [[ "$1" =~ [^0-9] ]]; then
        echo 'input must only contain digits'
        exit 1
    fi
    
    declare -r input="$1"
    declare -i -r span="$2"

    if [[ ${#input} -lt $span ]]; then
        echo 'span must not exceed string length'
        exit 1
    fi

    if [[ $span -lt 0 ]]; then
        echo 'span must not be negative'
        exit 1
    fi
    
    declare -i product=0

    for (( i = 0; i <= ${#input} - span; i++ )); do
        local m=1
        for (( j = 0; j < span; j++ )); do
            (( m = m * ${input:$i+$j:1} ))
        done
        if [[ $m -gt $product ]]; then
            product=$m
        fi
    done
    echo $product
}

main "$@"
