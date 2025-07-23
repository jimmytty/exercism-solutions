# These variables are initialized on the command line (using '-v'):
# - len

BEGIN { FS="" }

NF == 0 { print "series cannot be empty" > "/dev/stderr"; exit 1; }

len < 1 || len > NF { print "invalid length" > "/dev/stderr"; exit 1; }

{
    series = ""
    c      = 0
    while ( c++ + len <= NF ) series = series " " substr($0, c, len)
    print substr(series, 2)
}
