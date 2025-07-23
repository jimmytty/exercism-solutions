#!/usr/bin/env bash

main () {
    local -r phrase="$1"
    local acronym=''

     IFS="${IFS},_*-"

     for word in $phrase; do
         char=${word:0:1}
         char=${char@U}
         acronym="${acronym}${char}"
    done

    echo "$acronym"
}

main "$@"
