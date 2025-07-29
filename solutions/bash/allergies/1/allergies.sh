#!/usr/bin/env bash

main () {
    declare -r -a items=(
        "eggs"
        "peanuts"
        "shellfish"
        "strawberries"
        "tomatoes"
        "chocolate"
        "pollen"
        "cats"
    )
    declare -A allergens
    declare -a list

    declare score="$1"
    score="$(bc -q <<< "obase=2;$1")"
    printf -v score '%08d' "$score"
    score="$(rev <<< "$score")"

    for (( i = 0; i < ${#items[*]}; i++ )); do
        if [[ ${score:$i:1} -eq 1 ]]; then
            allergens["${items[$i]}"]=1
            list+=("${items[$i]}")
        fi
    done

    if [[ "$2" == 'allergic_to' ]]; then
        if [[ -z "${allergens[$3]}" ]]; then
            echo 'false'
        else
            echo 'true'
        fi
    else echo "${list[@]}"
    fi
}

main "$@"
