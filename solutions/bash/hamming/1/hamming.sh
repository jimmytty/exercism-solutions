#!/usr/bin/env bash

main () {
    local one="$1"
    local two="$2"
    local -i distance=0
    local -i i

    if [[ $# -ne 2 ]]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    fi
    if [[ ${#one} -ne ${#two} ]]; then
        echo "strands must be of equal length"
        exit 1
    fi

    for (( i=0; i < ${#one}; i++ )); do
        [[ "${one:i:1}" != "${two:i:1}" ]] && distance+=1
    done

    echo $distance
}

main "$@"
