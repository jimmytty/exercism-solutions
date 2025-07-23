#!/usr/bin/env bash

main () {
    if [[ $# -eq 0 || $# -gt 1 || "$1" =~ [^0-9] ]]; then
        echo "Usage: leap.sh <year>"
        exit 1
    fi

    local -i year="$1"
    local bool="false"
    if (( year % 400 == 0)); then
        bool="true"
    elif (( year % 100 == 0)); then
        bool="false"
    elif (( year % 4 == 0)); then
        bool="true"
    fi
    echo "$bool"
}

main "$@"
