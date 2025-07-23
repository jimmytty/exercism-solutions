-module(space_age).

-export([age/2]).

age(_Planet, _Seconds) ->
    case _Planet of
        mercury -> _Seconds / 31557600   / 0.2408467;
        venus   -> _Seconds / 0.61519726 / 31557600 ;
        earth   -> _Seconds / 31557600   / 1.0      ;
        mars    -> _Seconds / 1.8808158  / 31557600 ;
        jupiter -> _Seconds / 11.862615  / 31557600 ;
        saturn  -> _Seconds / 29.447498  / 31557600 ;
        uranus  -> _Seconds / 84.016846  / 31557600 ;
        neptune -> _Seconds / 164.79132  / 31557600
    end
.
