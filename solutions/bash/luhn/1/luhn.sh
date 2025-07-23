#!/usr/bin/env bash

main () {
    local input="$1"
    input=${input// }

    if [[ $input =~ [^0-9] ]]; then echo "false"; exit 0; fi
    if (( ${#input} < 2 )); then echo "false"; exit 0; fi

    if (( ${#input} < 16 )); then
        printf -v input "%016d" "${input#0}"
    fi

    local -i sum=0
    for (( i = 0; i < ${#input}; i++ )); do
        ((
            digit = (( i % 2 == 0 )) ? ${input:$i:1} * 2 : ${input:$i:1},
            digit = digit > 9 ? digit - 9 : digit,
            sum += digit
        ))
    done

    local bool='false'
    if (( sum % 10 == 0 )); then
        bool='true'
    fi
    echo $bool
}

main "$@"
