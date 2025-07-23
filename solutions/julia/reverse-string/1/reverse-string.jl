const TEST_GRAPHEMES = true

using Unicode

function myreverse(string)
    join(reverse(collect(graphemes(string))),"")
end
