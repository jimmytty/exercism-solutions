#!/usr/bin/env bash

main () {
    if [[ $# -lt 2 ]]; then
        echo "invalid color"
        exit 1
    fi

    declare -A ecc=(
        ['black']=0
        ['brown']=1
        ['red']=2
        ['orange']=3
        ['yellow']=4
        ['green']=5
        ['blue']=6
        ['violet']=7
        ['grey']=8
        ['white']=9
    )
    if [[ ! ("${ecc[$1]+null}") || ! ("${ecc[$2]+null}") ]]; then
        echo "invalid color"
        exit 1
    fi

    local -i value=0
    (( value = ${ecc[$1]} * 10 + ${ecc[$2]} ))

    echo $value
}

main "$@"
