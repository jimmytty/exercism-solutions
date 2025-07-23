-module(collatz_conjecture).

-export([steps/1]).

counter(Count, N) ->
    if  N =:= 1       -> Count;
        N rem 2 =:= 0 -> counter(Count + 1, N div 2);
        true ->          counter(Count + 1, N * 3 + 1)
    end
.

steps(_N) when _N < 1 -> error('badarg');
steps(1) -> 0;
steps(_N) -> counter(0, _N).
