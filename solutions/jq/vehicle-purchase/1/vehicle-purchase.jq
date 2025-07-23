def needs_license:
  . == "car" or . == "truck"
;

def choose_vehicle:
  if .[0] < .[1] then .[0] else .[1] end |
  "\(.) is clearly the better choice."
;

def resell_price:
  .original_price
  * if   .age <   3 then 80
    elif .age <= 10 then 70
    else                 50
    end
  / 100
;
