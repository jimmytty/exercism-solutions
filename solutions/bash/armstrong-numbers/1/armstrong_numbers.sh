#!/usr/bin/env bash

main () {
    local number="$1"
    local -i j=${#number}
    local is_armstrong='false'

    local -i sum=0
    for (( i = 0; i < ${#number}; i++ )); do
        (( sum += ${number:i:1} ** j ))
    done

    [[ $sum -eq $number ]] && is_armstrong='true'

    echo "$is_armstrong"
}

main "$@"
