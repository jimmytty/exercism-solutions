-module(rna_transcription).

-export([to_rna/1]).

from_dna(L) ->
    case L of
        "G" -> "C";
        "C" -> "G";
        "T" -> "A";
        "A" -> "U"
    end
.

split_chars(List) ->
    split_chars(List, length(List)).

split_chars(List, Length) when Length > 1 ->
    {A, B} = lists:split(1, List),
    [A | split_chars(B, Length - 1)];
split_chars(List, _) -> [List].

to_rna([]) -> [];
to_rna(_Strand) ->
    string:join(lists:map(fun from_dna/1, split_chars(_Strand)), "")
.
