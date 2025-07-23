#!/usr/bin/env bash

main () {
    if [[ $# -ne 2 || "$1$2" =~ [^0-9.-] ]]; then
        echo "invalid args"
        exit 1
    fi

    local x="$1"
    local y="$2"

    bc -q -l <<EOC
spot = $x ^ 2 + $y ^ 2
if ( spot <=  1 ^ 2 ) 10 else \
if ( spot <=  5 ^ 2 )  5 else \
if ( spot <= 10 ^ 2 )  1 else 0
EOC

}

main "$@"
