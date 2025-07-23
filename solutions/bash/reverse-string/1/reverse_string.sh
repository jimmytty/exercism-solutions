#!/usr/bin/env bash

main () {
    local string="$1"
    local gnirts=""
    for (( i = ${#string} - 1; i >= 0 ; i-- )); do
        gnirts="${gnirts}${string:$i:1}"
    done
    echo "$gnirts"
}

main "$@"
