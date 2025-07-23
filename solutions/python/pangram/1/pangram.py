def is_pangram(sentence):
    letters = {}
    for i in range(len(sentence)):
        c = ord(sentence[i].upper())
        if c >= 65 and c <= 90:
            letters[c] = 1
    return len(letters) >= 26
        
