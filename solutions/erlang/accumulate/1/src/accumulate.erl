-module(accumulate).
-export([accumulate/2]).
-import(lists, [map/2]).

-spec accumulate(fun((A) -> B), list(A)) -> list(B).
accumulate(_Fn, _List) -> map(_Fn, _List).
