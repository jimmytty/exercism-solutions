-module(two_fer).

-export([two_fer/0, two_fer/1]).

two_fer() -> %% undefined.
  "One for you, one for me.".

two_fer(_Name) -> %% undefined.
    io_lib:format("One for ~s, one for me.", [_Name]).
