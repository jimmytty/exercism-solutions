def create_score_board:
  { "The Best Ever": 1000000 }
;

def add_player(player; score):
  . + { (player): (score) }
;

def remove_player(player):
  del(.[player])
;

def update_score(player; points):
  .[player] = .[player] + points
;

def apply_monday_bonus:
  with_entries({key: .key, value: (.value + 100)})
;

def total_score:
  [.[]] | add // 0
;
