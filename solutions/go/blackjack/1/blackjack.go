package blackjack

func ParseCard(card string) int {
    switch card {
    case "ace":   return 11
    case "two":   return 2
    case "three": return 3
    case "four":  return 4
    case "five":  return 5
    case "six":   return 6
    case "seven": return 7
    case "eight": return 8
    case "nine":  return 9
    case "ten":   return 10
    case "jack":  return 10
    case "queen": return 10
    case "king":  return 10
    default:      return 0
    }
}

func FirstTurn(card1, card2, dealerCard string) string {
    myhand := ParseCard(card1) + ParseCard(card2)
    dhand  := ParseCard(dealerCard)
    if myhand <= 11 {
        return "H"
    } else if myhand >= 17 && myhand <= 20 {
        return "S"
    } else if card1 == "ace" && card2 == "ace" {
        return "P"
    } else if myhand >= 12 && myhand <= 16 {
        if dhand >= 7 {
            return "H"
        }
        return "S"
    } else if myhand == 21 {
        if dhand == 11 || dhand == 10  {
            return "S"
        }
    }
    return "W"
}
