package LanguageList;

use v5.40;

our @Languages;

sub add_language ($language) {
    push @Languages, $language;
    return 1;
}

sub remove_language () {
    pop @Languages;
    return 1;
}

sub first_language () {
    return $Languages[0];
}

sub last_language () {
    return $Languages[-1];
}

sub get_languages (@elements) {
    return @Languages[ map { $_ - 1 } @elements ];
}

sub has_language ($language) {
    return grep { $language eq $_ } @Languages;
}

1;
