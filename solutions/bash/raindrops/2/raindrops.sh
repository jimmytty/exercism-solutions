#!/usr/bin/env bash

main () {
    local -a factors=(3 5 7)
    local -A factors_map=(
        [3]='Pling'
        [5]='Plang'
        [7]='Plong'
    )
    local -i raindrops="$1"
    local sounds=''

    for factor in "${factors[@]}"; do
        if (( raindrops % factor == 0 )); then
            local sound="${factors_map[$factor]}"
            sounds="${sounds}${sound}"
        fi
    done

    [[ -z $sounds ]] && sounds="$raindrops"

    echo "$sounds"
}

main "$@"
