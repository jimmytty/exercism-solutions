-module(collatz_conjecture).

-export([steps/1]).

cref = counters:new(1, [atomics]).
counters:add(cref, 1, 1).

steps(_N) ->
    if ( _N > 1 ) ->
       case _N rem 2 =:= 0 of
           true  -> steps(_N div 2);
           false -> steps(_N * 3 + 1)
       end
       counters:add(cref, 1, 1).
    true -> counters:get(cref, 1).
    end
.
