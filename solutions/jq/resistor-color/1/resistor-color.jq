.property as $property | .input.color as $color |
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
    "white": 9
  } | to_entries |
  if $property == "colorCode" then (map(select(.key == $color))[0].value )
  else map(.key)
  end

