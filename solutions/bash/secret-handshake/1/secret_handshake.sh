#!/usr/bin/env bash

main () {
    if [[ "$1" == 0 ]]; then
        echo ""
        exit 0
    fi

    local -i n=$1
    local -i i=0
    local -a actions=('wink' 'double blink' 'close your eyes' 'jump' '[reverse]')
    local -a handshake=()
    for (( n = $1, i = 0; n > 0 ; n >>= 1, i++ )); do
        (( (n&1) == 0 )) && continue
        handshake+=("${actions[$i]}")
    done

    local string=""
    if [[ "${handshake[-1]}" == '[reverse]' ]]; then
        for (( i = ${#handshake[*]} - 2; i >= 0; i-- )); do
            if [[ -z "$string" ]]; then
                string="${handshake[$i]}"
            else
                string="${string},${handshake[$i]}"
            fi
        done
    else
        for (( i = 0; i < ${#handshake[*]}; i++ )); do
            if [[ -z "$string" ]]; then
                string="${handshake[$i]}"
            else
                string="${string},${handshake[$i]}"
            fi
        done

    fi

    echo "$string"
}

main "$@"
