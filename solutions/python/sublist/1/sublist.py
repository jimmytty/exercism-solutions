"""
This exercise stub and the test suite contain several enumerated constants.

Enumerated constants can be done with a NAME assigned to an arbitrary,
but unique value. An integer is traditionally used because it’s memory
efficient.
It is a common practice to export both constants and functions that work with
those constants (ex. the constants in the os, subprocess and re modules).

You can learn more here: https://en.wikipedia.org/wiki/Enumerated_type
"""

# Possible sublist categories.
# Change the values as you see fit.
SUBLIST   = -1
SUPERLIST =  1
EQUAL     =  0
UNEQUAL   =  3

def sublist(list_one, list_two):
    len_one = len(list_one)
    len_two = len(list_two)

    if len_one == len_two:
        if list_one == list_two: return EQUAL
        return UNEQUAL

    if len_one < len_two:
        if list_one == []: return SUBLIST
        i = 0
        while i + len_one <= len_two:
            if list_one == list_two[i:len_one+i]: return SUBLIST
            i += 1
        return UNEQUAL
    if list_two == []: return SUPERLIST
    i = 0
    while i + len_two <= len_one:
        if list_two == list_one[i:len_two+i]: return SUPERLIST
        i += 1
    return UNEQUAL
