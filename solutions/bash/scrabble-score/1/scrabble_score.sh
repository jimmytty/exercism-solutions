#!/usr/bin/env bash

main () {
    declare string=${1@U}
    declare -i score=0
    declare -A scores
    declare -A map=(
        [1]='A,E,I,O,U,L,N,R,S,T'
        [2]='D,G'
        [3]='B,C,M,P'
        [4]='F,H,V,W,Y'
        [5]='K'
        [8]='J,X'
       [10]='Q,Z'
    )
    for key in "${!map[@]}"; do
        IFS=',' read -r -a letters <<< "${map[$key]}"
        for char in "${letters[@]}"; do
            scores[$char]=$key
        done
    done

    while read -r -N 1 char; do
        [[ "${scores[$char]+_}" ]] || continue
        (( score += ${scores[$char]} ))
    done <<< "$string"

    echo $score
}

main "$@"
