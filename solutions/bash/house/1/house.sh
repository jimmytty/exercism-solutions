#!/usr/bin/env bash

main () {
    declare -i -r start="$1"
    declare -i -r stop="$2"
    declare -a -r rhyme=(
'This is the house that Jack built.'

'This is the malt
that lay in the house that Jack built.'

'This is the rat
that ate the malt
that lay in the house that Jack built.'

'This is the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'

'This is the horse and the hound and the horn
that belonged to the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.'
    )

    if [[     $start -lt 1
           || $start -gt ${#rhyme[*]}
           || $stop  -lt 1
           || $stop  -gt ${#rhyme[*]}
        ]]; then
        echo 'invalid'
        exit 1
    fi

    declare -a versus
    for (( i = start - 1; i < stop; i++ )); do
        versus+=("${rhyme[i]}")
    done

    declare string
    printf -v string $'\n\n%s' "${versus[@]}"
    string="${string:2:${#string}}"
    echo "$string"
}

main "$@"
