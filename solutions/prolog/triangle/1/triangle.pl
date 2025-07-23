triangle(Side1, Side2, Side3, Type) :-
    (
        S is Side1 + Side2, S < Side3      -> false;
        S is Side1 + Side3, S < Side2      -> false;
        S is Side2 + Side3, S < Side1      -> false;
        Side1 =< 0, Side2 =< 0, Side3 =< 0 -> false;
        Side1  == Side2, Side2  == Side3, Type == "equilateral" -> true;
        Side1  == Side2, Side2  == Side3, Type == "isosceles"   -> true;
        Side1 \== Side2, Side2 \== Side3, Type == "scalene"     -> true;
        Side1  == Side2, Side1 \== Side3, Type == "isosceles"   -> true;
        Side1  == Side3, Side2 \== Side3, Type == "isosceles"   -> true;
        Side2  == Side3, Side1 \== Side2, Type == "isosceles"   -> true;
        false
    )
.
