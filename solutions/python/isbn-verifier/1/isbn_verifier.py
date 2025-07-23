def is_valid(isbn):
    digits = [* ''.join(isbn.split('-'))]
    if len(digits) != 10: return False
    if digits[-1] == 'X': digits[-1] = '10'
    sum = 0
    for digit, pos in zip(digits, reversed(range(1,11))):
        if not(digit.isdigit()): return False
        sum += int(digit) * pos
    return sum % 11 == 0
