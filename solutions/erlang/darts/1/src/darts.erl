-module(darts).

-export([score/2]).


score(_X, _Y) -> 
    Spot = _X * _X + _Y * _Y,
    if 
        Spot =<   1 -> 10;
        Spot =<  25 ->  5;
        Spot =< 100 ->  1;
        true -> 0
    end
.
