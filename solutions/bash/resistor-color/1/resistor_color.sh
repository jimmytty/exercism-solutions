#!/usr/bin/env bash

main () {
    declare -r action="$1"
    declare -r color="$2"
    declare -r -a colors=(
        'black' 'brown' 'red' 'orange' 'yellow'
        'green' 'blue' 'violet' 'grey' 'white'
    )
    declare -A codes
    for (( i = 0; i < ${#colors[*]}; i++ )); do
        codes[${colors[$i]}]=$i
    done

    if [[ "$action" == "colors" ]]; then
        local lines
        printf -v lines $'\n%s' "${colors[@]}"
        lines="${lines:1:${#lines}}"
        echo "$lines"
        exit
    fi

    echo "${codes[$color]}"

}

main "$@"
