import datetime

GIGASECOND = 10 ** 9

def add(moment):
    return moment + datetime.timedelta( seconds = GIGASECOND )
