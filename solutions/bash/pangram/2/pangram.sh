#!/usr/bin/env bash

main () {
    # local -r sentence="${1@U}" ## unsupported
    local -r sentence="${1^^}"
    local is_pangram='false'

    local -A alphabet
    for c in {A..Z}; do
        alphabet[$c]=''
    done

    local -i i
    for (( i = 0; i < ${#sentence}; i++ )); do
        local char=${sentence:$i:1}
        if [ -v 'alphabet[$char]' ]; then
            unset 'alphabet[$char]'
        fi
    done

    (( ${#alphabet[@]} == 0 )) && is_pangram='true'

    echo $is_pangram
}

main "$@"
