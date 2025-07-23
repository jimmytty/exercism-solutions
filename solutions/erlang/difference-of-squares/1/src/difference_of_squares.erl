-module(difference_of_squares).

-export([difference_of_squares/1, square_of_sum/1, sum_of_squares/1]).


difference_of_squares(_Number) ->
    square_of_sum(_Number) - sum_of_squares(_Number)
.

square_of_sum(_Number) -> trunc(math:pow(_Number * (_Number + 1) div 2, 2)).

sum_of_squares(_Number) -> _Number * (_Number + 1) * (2 * _Number + 1) div 6.
