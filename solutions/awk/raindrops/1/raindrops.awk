# These variables are initialized on the command line (using '-v'):
# - num

BEGIN {
    sounds = ""
    if ( num % 3 == 0 ) sounds = sounds "Pling"
    if ( num % 5 == 0 ) sounds = sounds "Plang"
    if ( num % 7 == 0 ) sounds = sounds "Plong"
    if ( sounds == "" ) sounds = num
    print sounds
}
