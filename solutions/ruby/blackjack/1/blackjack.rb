module Blackjack
  def self.parse_card(card)
    case card
    when "ace"   then 11
    when "two"   then 2
    when "three" then 3
    when "four"  then 4
    when "five"  then 5
    when "six"   then 6
    when "seven" then 7
    when "eight" then 8
    when "nine"  then 9
    when "ten", "jack", "queen", "king" then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    case score
    when  4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    when 21     then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    range = card_range(card1, card2)
    dc    = parse_card(dealer_card)
    case
    when [card1, card2] === ["ace", "ace"] then "P"
    when (range == "blackjack" and dc <=  9) then "W"
    when (range == "blackjack" and dc >= 10) then "S"
    when range == "high" then "S"
    when (range == "mid" and dc <= 6) then "S"
    when (range == "mid" and dc >= 7) then "H"
    when range == "low" then "H"
    end
  end
end
