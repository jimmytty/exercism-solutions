-module(bob).

-export([response/1]).

response(_String) ->
    Phrase = string:trim(_String),
    Length = string:len(Phrase),
    Is_Question = string:str(Phrase, "?") =:= Length,
    Has_Lower = string:len(string:join(
                  string:tokens(Phrase, "abcdefghijklmnopqrstuvwxyz"),
                  "" )) =/= Length,
    Has_Upper = string:len(string:join(
                  string:tokens(Phrase, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"),
                  "" )) =/= Length,
    if Phrase =:= "" ->
            "Fine. Be that way!";
       Is_Question, not(Has_Lower), Has_Upper ->
            "Calm down, I know what I'm doing!";
       Is_Question ->
            "Sure.";
       Has_Upper, not Has_Lower ->
            "Whoa, chill out!";
       true ->
            "Whatever."
    end
.
