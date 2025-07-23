[
  .[] | ascii_upcase |
  gsub("-"; " ") | gsub("[[:punct:]]";"") |
  split(" ") | .[] | .[0:1]
]
  | join("")
