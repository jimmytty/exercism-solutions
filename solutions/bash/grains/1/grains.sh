#!/usr/bin/env bash

main () {
    declare square="$1"
    declare grains="1"

    if [[ $square != 'total' && ( $square -lt 1 || $square -gt 64 ) ]]; then
        echo "Error: invalid input"
        exit 1
    fi

    [[ $square = 'total' ]] && square=65
    for (( i = 2; i <= square; i++ )); do
        if (( i > 63 )); then
            ## bash integer overflow
            grains=$(bc <<< "${grains} + ${grains}")
            (( i == 65 )) && grains=$(bc <<< "$grains - 1")
        else
            (( grains += grains ))
        fi
    done
    echo "$grains"
}

main "$@"
