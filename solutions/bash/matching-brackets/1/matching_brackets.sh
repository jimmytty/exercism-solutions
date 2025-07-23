#!/usr/bin/env bash

main () {
    local string="$1"
    local brackets=""

    for (( i = 0; i < ${#string}; i++ )); do
        char="${string:$i:1}"
        if [[ '{}[]()' == *"$char"* ]]; then
            brackets="${brackets}${char}"
        fi
    done

    while [[ -n "$brackets" ]]; do
        len=${#brackets}
        brackets=${brackets//"{}"}
        brackets=${brackets//"[]"}
        brackets=${brackets//"()"}
        [[ $len == "${#brackets}" ]] && break
    done

    local bool=""
    if [[ -z "$brackets" ]]; then
        bool="true"
    else
        bool="false"
    fi

    echo $bool
}

main "$@"
