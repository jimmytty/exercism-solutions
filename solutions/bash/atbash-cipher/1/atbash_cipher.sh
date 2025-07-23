#!/usr/bin/env bash

main () {
    local action="$1"
    local phrase="${2,,}"
    local -r -a alphabet=( a b c d e f g h i j k l m n o p q r s t u v w x y z )
    local -a letters=()
    local -i counter=0
    local -i position=5
    for (( i = 0; i < ${#phrase}; i++ )); do
        char="${phrase:$i:1}"
        if [[ "$char" =~ ^[0-9]+$ ]]; then
            letters+=("$char")
            (( counter += 1 ))
        else
            idx=-1
            for (( j = 0; j < ${#alphabet[*]}; j++ )); do
                if [[ "$char" == "${alphabet[$j]}" ]]; then
                    (( idx = 25 - j ))
                    letters+=("${alphabet[$idx]}")
                    (( counter++ ))
                    break
                fi
            done
        fi

        if [[ $counter -eq $position ]]; then
            letters+=(' ')
            counter=0
        fi
    done

    local text
    printf -v text '%s' "${letters[@]}"
    if [[ "$action" == 'encode' ]]; then
        text="${text% }"
    elif [[ "$action" == 'decode' ]]; then
        text="${text// }"
    fi

    echo "$text"
}

main "$@"
