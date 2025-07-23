def is_isogram(string):
    letters = {}
    for i in range(len(string)):
        c = ord(string[i].upper())
        if c >= 65 and c <= 90:
            if c in letters: return False
            letters[c] = 1
    return True
                
