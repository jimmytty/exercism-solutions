#!/usr/bin/env bash

main () {
    local -ru sentence="${1}"
    local is_pangram='false'

    local -A alphabet
    for c in {A..Z}; do
        alphabet[$c]=1
    done

    local -i i
    for (( i = 0; i < ${#sentence}; i++ )); do
        if [ -v 'alphabet[${sentence:$i:1}]' ]; then
            unset 'alphabet[${sentence:$i:1}]'
        fi
    done

    (( ${#alphabet[@]} == 0 )) && is_pangram='true'

    echo $is_pangram
}

main "$@"
