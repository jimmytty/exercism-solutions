#!/usr/bin/env bash

main () {
    local name='you'
    if [ $# -ne 0 ]; then
	name="$@"
    fi
    echo "One for $name, one for me."
}

main "$@"
