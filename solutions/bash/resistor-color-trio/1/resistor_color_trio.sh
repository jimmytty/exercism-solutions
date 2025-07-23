#!/usr/bin/env bash

main () {
    declare -r -A ecc=(
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
    local value=0

    (( value = ${ecc[$1]} * 10 + ${ecc[$2]} ))
    printf -v value '%0.'${ecc[$3]}'f' $value
    value=${value/.}

    local label='ohms'

    if (( value >= 1000000000 )); then
        (( value %= 1000000000))
        label="giga${label}"
    elif (( value >= 1000000 )); then
        (( value %= 1000000 ))
        label="mega${label}"
    elif (( value >= 1000 )); then
        (( value %= 1000 ))
        label="kilo${label}"
    fi

    echo "${value} ${label}"

}

main "$@"
