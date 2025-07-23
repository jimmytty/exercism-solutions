#!/usr/bin/env bash

main () {
    local phrase="$1"
    local answer # ='Fine. Be that way!' # silence
    local bool

    IFS=$' \t\v\r\n' read -d '' words <<< "$phrase"
    printf -v phrase ' %s' "${words[@]}"
    phrase=${phrase:1}

    local  is_silence='N'
    local is_question='N'
    local has_letters='N'
    local  is_yelling='N'

    [[ "$phrase" == '' || "$phrase" =~ ^[[:blank:]]+$ ]] &&  is_silence='Y'
    [[ "${phrase: -1:1}" == '?' ]]                       && is_question='Y'
    [[ "$phrase" =~ [[:alpha:]] ]]                       && has_letters='Y'
    [[ "${phrase@U}" == "$phrase" ]]                     &&  is_yelling='Y'

    printf -v bool '%s' $is_silence $is_question $has_letters $is_yelling

    case $bool in
             Y???) echo 'Fine. Be that way!';;
        NYNY|NYYN) echo 'Sure.';;
             NNYY) echo 'Whoa, chill out!';;
             NYYY) echo "Calm down, I know what I'm doing!";;
                *) echo 'Whatever.';;
    esac

}

main "$@"
