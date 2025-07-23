[
  .colors[0] as $c1 | .colors[1] as $c2 |
  {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
  }
  | to_entries[] |
  (select(.key == $c1) | .value * 10),
  (select(.key == $c2) | .value)
] | add
