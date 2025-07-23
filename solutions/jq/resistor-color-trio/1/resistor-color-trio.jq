def c2i:
  . as $key |
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
  } | to_entries[] | select(.key == $key) | .value
;

[ .colors[0:3] | .[] | c2i ] |
  (.[0] * 100 + .[1] * 10) * pow(10; .[2] - 1) |
  if . == 0 then { "value": ., "unit": "ohms" }
  elif . % 1e9 == 0 then { "value": (. / 1e9), "unit": "gigaohms" }
  elif . % 1e6 == 0 then { "value": (. / 1e6), "unit": "megaohms" }
  elif . % 1e3 == 0 then { "value": (. / 1e3), "unit": "kiloohms" }
  else { "value": ., "unit": "ohms" }
  end
