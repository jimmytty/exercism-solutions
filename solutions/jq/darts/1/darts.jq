pow(.x; 2) + pow(.y; 2) |
  if   . <= pow( 1; 2) then 10
  elif . <= pow( 5; 2) then  5
  elif . <= pow(10; 2) then  1
  else 0
  end
