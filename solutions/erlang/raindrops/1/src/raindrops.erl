-module(raindrops).

-export([convert/1]).

convert(_Number) ->
    Sounds =
        lists:concat(
          [
           if ( _Number rem 3 =:= 0 ) -> "Pling"; true -> "" end,
           if ( _Number rem 5 =:= 0 ) -> "Plang"; true -> "" end,
           if ( _Number rem 7 =:= 0 ) -> "Plong"; true -> "" end
          ]
    ),
    if ( Sounds =:= "" ) -> integer_to_list(_Number); true -> Sounds end
.





