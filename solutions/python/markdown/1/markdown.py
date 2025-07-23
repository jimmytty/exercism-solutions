import re

def parse(markdown):
    lines = markdown.split('\n')

    map_pairs = {
        "_"      : [ "<em>"     , "</em>"     ],
        "*"      : [ "<em>"     , "</em>"     ],
        "__"     : [ "<strong>" , "</strong>" ],
        "**"     : [ "<strong>" , "</strong>" ],
        "~~"     : [ "<del>"    , "</del>"    ],
    }

    map_start_of_line = {
        "*"      : [ "<ul><li>" , "</li></ul>" ],
        "#"      : [ "<h1>"     , "</h1>"      ],
        "##"     : [ "<h2>"     , "</h2>"      ],
        "###"    : [ "<h3>"     , "</h3>"      ],
        "####"   : [ "<h4>"     , "</h4>"      ],
        "#####"  : [ "<h5>"     , "</h5>"      ],
        "######" : [ "<h6>"     , "</h6>"      ],
    }

    html = []

    for line in lines:

        # Parsing markup items
        markups_re = "|".join([ re.escape(s) for s in map_pairs.keys() ])
        line = re.sub(
            r'([*_]{1,2})(\S.*?\S)\1',
            lambda m: map_pairs[m[1]][0] + m[2] + map_pairs[m[1]][1],
            line
        )

        # Parsing headers, lists and paragraphs
        m = re.match(r"((?:\*|#{1,6}))\s(.*)", line)
        if m:
            tags = map_start_of_line[m.group(1)]
            line = tags[0] + m.group(2) + tags[1]
        else:
            print("line => %s" % line)
            line = "<p>" + line + "</p>"

        html.append(line)

    string = ''.join(html)
    string = re.sub(r'(</ul>\s*<ul>)', '', string)

    return string
