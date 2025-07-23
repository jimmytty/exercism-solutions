[
  .sentence | ascii_downcase | match(["[a-z]","g"]) | .string
]
  | sort | unique | length == 26
