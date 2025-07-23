-module(leap).

-export([leap_year/1]).

leap_year(_Year) ->
    if ( _Year rem 4 =:= 0
         andalso ( _Year rem 100 =/= 0
                   orelse ( _Year rem 100 =:= 0
                            andalso _Year rem 400 =:= 0 ) )
       ) ->
            true;
       true ->
            false
    end
.
