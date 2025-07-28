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
    declare -i -r g=1000000000
    declare -i -r m=1000000
    declare -i -r k=1000
    local value=0

    if [[ -z "${ecc[$1]}" || -z "${ecc[$2]}" || -z "${ecc[$3]}" ]]; then
        echo $@
        exit 1
    fi

    (( value = ${ecc[$1]} * 10 + ${ecc[$2]} ))
    printf -v value '%0.'${ecc[$3]}'f' $value
    value=${value/.}

    local label='ohms'

    if   (( value >= g && value % g == 0 )); then
         (( value /= g ))
        label="giga${label}"
    elif (( value >= m && value % m == 0 )); then
         (( value /= m ))
        label="mega${label}"
    elif (( value >= k && value % k == 0 )); then
         (( value /= k ))
        label="kilo${label}"
    fi

    echo "${value} ${label}"

}

main "$@"
