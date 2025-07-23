def translate(text):
    words = text.split(' ')
    for i in range(len(words)):
        piglatin = words[i]
        if piglatin[0] in 'aeiou' or piglatin[0:2] in ['xr', 'yt']:
            piglatin = piglatin + 'ay'
        elif piglatin[0] in 'bcdfghjklmnpqrstvwxyz':
            piglatin = piglatin[1:] + piglatin[0]
            while piglatin[0] in 'bcdfghjklmnpqrstvwxz':
                piglatin = piglatin[1:] + piglatin[0]
            if words[i] == 'run': print(piglatin)
            if piglatin[-1] == 'q' and piglatin[0] == 'u':
                piglatin = piglatin[1:] + piglatin[0]
            piglatin = piglatin + 'ay'
        words[i] = piglatin
    return ' '.join(words)
