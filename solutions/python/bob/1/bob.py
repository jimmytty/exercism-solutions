def response(hey_bob):

    text = hey_bob.strip()

    if text == '': return "Fine. Be that way!"

    opts = []
    opts.append('is_question' if text[-1] == '?' else '')
    if any(c.isupper() for c in [c for c in text if c.isalpha()]) and all(c.isupper() for c in  [c for c in text if c.isalpha()]):
        opts.append('is_yelling')
    else: opts.append('')

    answer = ''
    if opts == ['is_question', 'is_yelling']:
        answer = "Calm down, I know what I'm doing!"
    elif opts[1] == 'is_yelling':
        answer = "Whoa, chill out!"
    elif opts[0] == 'is_question':
        answer = "Sure."
    else: answer = "Whatever."

    return answer
