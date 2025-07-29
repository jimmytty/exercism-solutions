#!/usr/bin/env bash

function square_of_sum () {
    declare -i -r max="$1"
    declare -i sum=0
    for (( i = 1; i <= max; i++ )); do
        (( sum += i ))
    done
    (( sum *= sum ))
    echo $sum
}

function sum_of_squares () {
    declare -i -r max="$1"
    declare -i sum=0
    for (( i = 1; i <= max; i++ )); do
        (( sum += i * i ))
    done
    echo $sum
}

function difference () {
    declare -i -r max="$1"
    declare -i -r sqsum=$(square_of_sum $max)
    declare -i -r sumsq=$(sum_of_squares $max)
    declare -i diff=0
    (( diff = sqsum - sumsq ))
    echo $diff
}


main () {
    declare -r func="$1"
    declare -r arg="$2"
    $func "$arg"
}

main "$@"
