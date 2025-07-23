module Darts (score) where

score :: Float -> Float -> Int
score x y =
       if x ** 2 + y ** 2 <=  1 ** 2 then 10 -- inner circle
  else if x ** 2 + y ** 2 <=  5 ** 2 then  5 -- middle circle
  else if x ** 2 + y ** 2 <= 10 ** 2 then  1 -- outer circle
  else 0                                     -- outside the target
