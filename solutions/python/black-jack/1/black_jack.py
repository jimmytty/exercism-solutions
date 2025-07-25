"""Functions to help play and score a game of blackjack.

How to play blackjack:    https://bicyclecards.com/how-to-play/blackjack/
"Standard" playing cards: https://en.wikipedia.org/wiki/Standard_52-card_deck
"""


def value_of_card(card):
    """Determine the scoring value of a card.

    :param card: str - given card.
    :return: int - value of a given card. 'J', 'Q', 'K' = 10; 'A' = 1; numerical value otherwise.
    """

    if card == 'A':
        value = 1
    elif card in [ 'J', 'Q', 'K' ]:
        value = 10
    elif 2 <= int(card) <= 10:
        value = int(card)

    return value


def higher_card(card_one, card_two):
    """Determine which card has a higher value in the hand.

    :param card_one, card_two:
         str - cards dealt. 'J', 'Q', 'K' = 10; 'A' = 1;
         numerical value otherwise.
    :return: higher value card - str.
        Tuple of both cards if they are of equal value.
    """

    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)
    if value_one == value_two:
        higher = ( card_one, card_two)
    elif value_one > value_two:
        higher = card_one
    else:
        higher = card_two

    return higher


def value_of_ace(card_one, card_two):
    """Calculate the most advantageous value for the ace card.

    :param card_one, card_two: str - card dealt. 'J', 'Q', 'K' = 10;
           'A' = 11 (if already in hand); numerical value otherwise.

    :return: int - value of the upcoming ace card (either 1 or 11).
    """

    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)
    if 'A' in [card_one, card_two] or value_one + value_two + 11 > 21:
        value_ace = 1
    else:
        value_ace = 11

    return value_ace


def is_blackjack(card_one, card_two):
    """Determine if the hand is a 'natural' or 'blackjack'.

    :param card_one, card_two:
        str - cards dealt. 'J', 'Q', 'K' = 10; 'A' = 11;
        numerical value otherwise.
    :return: bool - if the hand is a blackjack (two cards worth 21).
    """

    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)

    return 'A' in [card_one, card_two] and 10 in [value_one, value_two]


def can_split_pairs(card_one, card_two):
    """Determine if a player can split their hand into two hands.

    :param card_one, card_two: str - cards dealt.
    :return: bool - if the hand can be split into two pairs (i.e. cards are of the same value).
    """

    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)

    return value_one == value_two


def can_double_down(card_one, card_two):
    """Determine if a blackjack player can place a double down bet.

    :param card_one, card_two: str - first and second cards in hand.
    :return: bool - if the hand can be doubled down (i.e. totals 9, 10 or 11 points).
    """

    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)

    return 9 <= value_one + value_two <= 11
