(
  .number | [
  (if . % 3 == 0 then "Pling" else empty end),
  (if . % 5 == 0 then "Plang" else empty end),
  (if . % 7 == 0 then "Plong" else empty end)
  ] | add
) // .number
