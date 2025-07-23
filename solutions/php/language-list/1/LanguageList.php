<?php

function language_list(...$list)
{
    return $list;
}

function add_to_language_list($list, $language)
{
    $list[] = $language;
    return $list;
}

function prune_language_list($list)
{
    array_shift($list);
    return $list;
}

function current_language($list)
{
    return $list[0];
}

function language_list_length($list)
{
    return count($list);
}
